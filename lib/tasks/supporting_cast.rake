namespace :supporting_cast do

  task :require do
    require 'rails/generators'
  end

  desc "Generate redis.yml and redis config files for development and test"
  task :redis => :require do
    Rails::Generators.invoke "supporting_cast:redis_config"
  end

  desc "Generate database.yml for development and test"
  task :database => :require do
    Rails::Generators.invoke "supporting_cast:database_config"
  end

  desc "Generate elasticsearch.yml and elasticsearch config files for development and test"
  task :elasticsearch => :require do
    Rails::Generators.invoke "supporting_cast:elasticsearch_config"
  end

  desc "Generate sunspot.yml and sunspot config files for development and test"
  task :sunspot => :require do
    Rails::Generators.invoke "supporting_cast:sunspot_config"
  end

  desc "Generate a Procfile for use with foreman"
  task :foreman => :require do
    Rails::Generators.invoke "supporting_cast:foreman_config"
  end

  desc "Generate nginx configuration for development"
  task :nginx => :require do
    Rails::Generators.invoke "supporting_cast:nginx_config"
  end

  desc "Generate unicorn configuration for development"
  task :unicorn => :require do
    Rails::Generators.invoke "supporting_cast:unicorn_config"
  end

  desc "Generate sidekiq configuration for development"
  task :sidekiq => :require do
    Rails::Generators.invoke "supporting_cast:sidekiq_config"
  end

  task :default => :require do
    Rails::Generators.invoke "supporting_cast:config"
  end
end

desc "Bootstrap all supporting_cast configuration files"
task :supporting_cast => "supporting_cast:default"
