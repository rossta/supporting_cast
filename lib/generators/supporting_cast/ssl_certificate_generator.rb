# openssl req -new -nodes -keyout server.key -out server.csr

require 'generators/supporting_cast/generator_helpers'

module SupportingCast
  module Generators
    class SslCertificateGenerator < Rails::Generators::Base
      include GeneratorHelpers

      desc "Generate ssl certificate files"

      def openssl
        inside('config/nginx') do
          run('rm server.key server.csr server.crt')

          # generate private key and certificate signing request
          run('openssl req -new -nodes -keyout server.key -out server.csr')

          # generate certificate
          run('openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt')
        end
      end

      def own
        inside('config/nginx') do
          run('chmod 400 *.key *.crt')
          run('sudo chown root *.key *.crt')
        end
      end

    end
  end
end
