require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class SunspotConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate sunspot.yml and sunspot config files for development and test"
      source_root File.join(File.dirname(__FILE__), 'templates')

      attr_accessor :env, :port

      def default_port
        8988
      end

      def sunspot_yml
        template 'sunspot.yml.erb', "config/sunspot.yml"
      end

    end
  end
end
