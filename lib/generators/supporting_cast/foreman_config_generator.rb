require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class ForemanConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers
      source_root File.join(File.dirname(__FILE__), 'templates')

      desc "Generate a Procfile for use with foreman"

      def procfile
        template 'Procfile.erb', "Procfile"
      end

    end
  end
end
