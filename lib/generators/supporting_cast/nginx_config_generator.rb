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

      def ssl_certificate
        Rails::Generators.invoke "supporting_cast:ssl_certificate" if yes?("Add self-signed ssl ssl_certificate for nginx? [yn]")
      end

    end
  end
end
