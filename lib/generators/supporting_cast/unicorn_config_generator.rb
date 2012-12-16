require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class UnicornConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers
      source_root File.join(File.dirname(__FILE__), 'templates')

      desc 'Generate unicorn configuration for development'

      def mkdir_unicorn_conf
        empty_directory 'config/unicorn'
      end

      def nginx_conf
        template 'unicorn.rb.erb', 'config/unicorn/unicorn.rb'
      end

    end
  end
end
