require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class ElasticsearchConfigGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate elasticsearch.yml and elasticsearch config files for development and test"
      source_root File.join(File.dirname(__FILE__), 'templates')

      attr_accessor :env, :port

      def default_port
        9200
      end

      def elasticsearch_options
        {
          "test" => { hosts: ["127.0.0.1:#{test_port}"] },
          "development" => { hosts: ["127.0.0.1:#{development_port}"] }
        }
      end

      def mkdir_elasticsearch_conf
        empty_directory "config/elasticsearch"
      end

      def development_elasticsearch_conf
        env = 'development'
        port = development_port
        template 'elasticsearch_config.yml.erb', "config/elasticsearch/#{env}.conf"
      end

      def test_elasticsearch_conf
        env = 'test'
        port = test_port
        template 'elasticsearch_config.yml.erb', "config/elasticsearch/#{env}.conf"
      end

      def redis_yml
        template 'elasticsearch.yml.erb', "config/elasticsearch.yml"
      end

    end
  end
end
