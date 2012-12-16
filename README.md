# SupportingCast

Opinionated generators for common Rails backing services, e.g. Redis, nginx, sidekiq, nginx, i.e., the supporting cast.

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

## Configurations

SupportingCast is intended to make it easier to get backing services up and running for Rails local (development and test) environments. A guiding principle, largely inspired by the [12 Factor App](http://www.12factor.net/), is to minimize divergence between local and production environments.

### Redis

Generates `config/redis.yml` for specifying the interface to your Rails app and separate redis-server conf files in `config/redis` for your development and test environments.

As Francis Hwang said in his post, [Testing Rails Against a Running Redis Instance](http://fhwang.net/2010/09/23/Testing-Rails-against-a-running-Redis-instance-and-doing-it-with-Hydra-to-boot):

> If your Rails app uses Redis, there are basically three approaches you can take for when the code under test hits Redis.
>
> 1. Mock Redis
> 2. Stub Redis
> 3. Stop messing around and just use Redis

SupportingCast will generate configurations for running separate Redis instances for development and test. Paired with the foreman configuration, it's dead simple to start/stop multiple Redis instances for local environments. You could [use Redis namespaces to separate environments](http://dev.af83.com/2012/07/31/should-we-namespace-redis.html), but why mess around?

### Nginx

Generate an app-specific starter nginx configuration in `config/nginx` with typical defaults with optional self-signed SSL certificate.

### Unicorn

Generate a starter config file for configuring a unicorn server at `conf/unicorn/unicorn.rb`.

### Sidekiq

Adds [sidekiq](https://github.com/mperham/sidekiq) configuration at `config/sidekiq.yml`.

### Elasticsearch

For [elasticsearch](http://www.elasticsearch.org/), generates a `config/elasticsearch.yml` files for specifying the interface to your Rails app and config files for running elasticsearch server for development and test environments.

### Sunspot

Generates `config/sunspot.yml` for enabling your app for [solr](http://lucene.apache.org/solr/)-powered search via [sunspot](http://sunspot.github.com/).


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
