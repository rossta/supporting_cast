# SupportingCast

Opinionated generators for common Rails supporting cast services, e.g. Redis, nginx, sidekiq, nginx

## Installation

Add this line to your application's Gemfile:

    gem 'supporting_cast', :group => :development

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install supporting_cast

## Usage

    $ rails g supporting_cast:config          # Bootstrap the whole supporting cast

    $ rails g supporting_cast:<name>_config   # Generate config for given cast member

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
