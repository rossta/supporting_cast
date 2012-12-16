module SupportingCast
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      desc "Generate configuration files for development and test"

      def generate_config_files
        Rails::Generators.invoke "supporting_cast:redis_config" if yes?("Configure redis? [yn]")
        Rails::Generators.invoke "supporting_cast:database_config" if yes?("Configure database.yml? [yn]")
        Rails::Generators.invoke "supporting_cast:elasticsearch_config" if yes?("Configure elasticsearch? [yn]")
        Rails::Generators.invoke "supporting_cast:sunspot_config" if yes?("Configure sunspot? [yn]")
        Rails::Generators.invoke "supporting_cast:foreman_config" if yes?("Add Procfile for foreman? [yn]")
        Rails::Generators.invoke "supporting_cast:nginx_config" if yes?("Configure nginx? [yn]")
        Rails::Generators.invoke "supporting_cast:unicorn_config" if yes?("Configure unicorn? [yn]")
        Rails::Generators.invoke "supporting_cast:sidekiq_config" if yes?("Configure sidekiq? [yn]")
      end

    end
  end
end
