require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class NginxConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers
      source_root File.join(File.dirname(__FILE__), 'templates')

      desc 'Generate nginx configuration for development'

      def mkdir_nginx_conf
        empty_directory 'config/nginx'
      end

      def nginx_conf
        template 'nginx.conf.erb', 'config/nginx/nginx.conf'
      end

    end
  end
end
