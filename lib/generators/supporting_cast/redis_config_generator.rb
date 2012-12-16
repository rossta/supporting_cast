require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class RedisConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate environment-specific redis.yml and redis conf files from template"
      source_root File.join(File.dirname(__FILE__), 'templates')

      attr_reader :env, :port

      def default_port
        6379
      end

      def mkdir_redis_conf
        empty_directory "config/redis"
      end

      def development_redis_conf
        @env = 'development'
        @port = development_port
        template 'redis.conf.erb', "config/redis/#{env}.conf"
      end

      def test_redis_conf
        @env = 'test'
        @port = test_port
        template 'redis.conf.erb', "config/redis/#{env}.conf"
      end

      def redis_yml
        template 'redis.yml.erb', "config/redis.yml"
      end

    end
  end
end
