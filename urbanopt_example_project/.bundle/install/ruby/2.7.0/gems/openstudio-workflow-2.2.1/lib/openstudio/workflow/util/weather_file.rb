# frozen_string_literal: true

# *******************************************************************************
# OpenStudio(R), Copyright (c) 2008-2021, Alliance for Sustainable Energy, LLC.
# All rights reserved.
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# (1) Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# (2) Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# (3) Neither the name of the copyright holder nor the names of any contributors
# may be used to endorse or promote products derived from this software without
# specific prior written permission from the respective party.
#
# (4) Other than as required in clauses (1) and (2), distributions in any form
# of modifications or other derivative works may not use the "OpenStudio"
# trademark, "OS", "os", or any other confusingly similar designation without
# specific prior written permission from Alliance for Sustainable Energy, LLC.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER, THE UNITED STATES
# GOVERNMENT, OR ANY CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# *******************************************************************************

module OpenStudio
  module Workflow
    module Util
      # The current precedence rules for weather files are defined in this module. Best practice is to only use the
      #  #get_weather_file method, as it will be forward compatible
      #
      module WeatherFile
        # Returns the weather file with precedence
        #
        # @param [String] directory The directory to append all relative directories to, see #get_weather_file_from_fs
        # @param [String] wf The weather file being searched for. If not the name of the file this parameter should be
        #   the absolute path specifying it's location
        # @param [Array] wf_search_array The set of precedence ordered relative directories to search for the wf in. A
        #   typical entry might look like `['files', '../../files', '../../weather']`
        # @param [Object] model The OpenStudio::Model object to parse, see #get_weather_file_from_osm
        # @return [String, nil] The weather file with precedence if defined, nil if not, and a failure if the wf is
        #   defined but not in the filesystem
        #
        def get_weather_file(directory, wf, wf_search_array, model, logger = nil)
          # TODO: this logic needs some updating, weather file should come from current model, found using search paths
          logger ||= ::Logger.new($stdout) unless logger
          if wf
            weather_file = get_weather_file_from_fs(directory, wf, wf_search_array, logger)
            raise 'Could not locate the weather file in the filesystem. Please see the log' if weather_file == false
          end
          weather_file = get_weather_file_from_osm(model, logger) if weather_file.nil?
          raise 'Could not locate the weather file in the filesystem. Please see the log' if weather_file == false

          logger.warn 'The weather file could not be determined. Please see the log for details' unless weather_file
          weather_file
        end

        private

        # Returns the weather file from the model. If the weather file is defined in the model, then
        # it checks the file paths to check if the model exists. This allows for a user to upload a
        # weather file in a measure and then have the measure's path be used for the weather file.
        #
        # @todo (rhorsey) verify the description of this method, as it seems suspect
        # @param [Object] model The OpenStudio::Model object to retrieve the weather file from
        # @return [nil,false, String] If the result is nil the weather file was not defined in the model, if the result
        #   is false the weather file was set but could not be found on the filesystem, if a string the weather file was
        #   defined and it's existence verified
        #
        def get_weather_file_from_osm(model, logger)
          wf = nil
          # grab the weather file out of the OSM if it exists
          if model.weatherFile.empty?
            logger.warn 'No weather file defined in the model'
          else
            p = model.weatherFile.get.path.get.to_s.gsub('file://', '')
            wf = if File.exist? p
                   File.absolute_path(p)
                 else
                   # this is the weather file from the OSM model
                   File.absolute_path(@model.weatherFile.get.path.get.to_s)
                 end
            logger.info "The weather file path found in the model object: #{wf}"
            unless File.exist? wf
              logger.warn 'The weather file could not be found on the filesystem.'
              wf = false
            end
          end
          wf
        end

        # Returns the weather file defined in the OSW
        #
        # @param [String] directory The base directory to append all relative directories to
        # @param [String] wf The weather file being searched for. If not the name of the file this parameter should be
        #   the absolute path specifying it's location
        # @param [Array] wf_search_array The set of precedence ordered relative directories to search for the wf in. A
        #   typical entry might look like `['files', '../../files', '../../weather']`
        # @return [nil, false, String] If the result is nil the weather file was not defined in the workflow, if the
        #   result is false the weather file was set but could not be found on the filesystem, if a string the weather
        #   file was defined and it's existence verified. The order of precedence for paths is as follows: 1 - an
        #   absolute path defined in wf, 2 - the wf_search_array, should it be defined, joined with the weather file and
        #   appended to the directory, with each entry in the array searched until the wf is found
        #
        def get_weather_file_from_fs(directory, wf, wf_search_array, logger)
          raise "wf was defined as #{wf}. Please correct" unless wf

          weather_file = nil
          if Pathname.new(wf).absolute?
            weather_file = wf
          else
            wf_search_array.each do |wf_dir|
              logger.warn "The path #{wf_dir} does not exist" unless File.exist? File.join(directory, wf_dir)
              next unless File.exist? File.join(directory, wf_dir)

              if Dir.entries(File.join(directory, wf_dir)).include? File.basename(wf)
                weather_file = File.absolute_path(File.join(directory, wf_dir, wf))
                break
              end
            end
          end
          unless weather_file
            logger.warn 'The weather file was not found on the filesystem'
            return nil
          end
          logger.info "Weather file with precedence in the file system is #{weather_file}"
          unless File.exist? weather_file
            logger.warn 'The weather file could not be found on the filesystem'
            weather_file = false
          end
          weather_file
        end
      end
    end
  end
end
