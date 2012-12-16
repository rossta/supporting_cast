require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class DatabaseConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate database.yml file from template"
      source_root File.join(File.dirname(__FILE__), 'templates')

      def database_yml
        template 'database.yml.erb', "config/database.yml"
      end

    end
  end
end
