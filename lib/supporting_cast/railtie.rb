require 'supporting_cast'
require 'rails'

module SupportingCast
  class Railtie < Rails::Railtie
    railtie_name :supporting_cast

    rake_tasks do
      load "tasks/supporting_cast.rake"
    end
  end
end
