source 'https://rubygems.org'
ruby '2.1.5'

gem 'puma'
gem 'rails'
gem 'grape', '~>0.11.0'
gem 'grape-entity'
gem 'hashie-forbidden_attributes'
gem 'rack-cors', require: 'rack/cors'
gem 'sidekiq'
gem 'figaro', '>= 1.0.0.rc1'
gem 'awesome_print'
gem 'sinatra', require: nil

group :development do
  gem 'binding_of_caller', platforms: [:mri_21]
  gem 'quiet_assets'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'spring'
  gem 'pry-byebug'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'jazz_hands', github: "nixme/jazz_hands", branch: "bring-your-own-debugger"
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end

group :production, :staging do
  gem 'heroku-deflater'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'timecop'
end
