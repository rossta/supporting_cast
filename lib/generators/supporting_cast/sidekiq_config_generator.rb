require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class SidekiqConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate sidekiq.yml file from template"
      source_root File.join(File.dirname(__FILE__), 'templates')

      def sidekiq_yml
        template 'sidekiq.yml.erb', "config/sidekiq.yml"
      end

    end
  end
end
