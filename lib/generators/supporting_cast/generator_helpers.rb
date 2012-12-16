module SupportingCast
  module Generators
    module GeneratorHelpers

      def application_name
        ENV['APPLICATION_NAME'] || ::Rails.application.class.name.split('::').first.downcase
      end

      def rails_root
        Rails.root
      end

      def development_port
        @development_port ||= default_port + 1 + rand(100)
      end

      def test_port
        @test_port ||= development_port + 1
      end

    end
  end
end
