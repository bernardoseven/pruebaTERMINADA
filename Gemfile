source "https://rubygems.org"
ruby "2.0.0"
gem 'rubygems-update'
gem 'bundler'
gem 'sinatra'
gem 'rest-open-uri'
gem 'rest-client'
gem 'json'

group :local_test do
  gem 'rack-test'
  gem 'rspec'
end

group :integration_test do
  gem 'cucumber'
  gem 'watir-webdriver'
end

group :development do
end

group :production do
  gem 'newrelic_rpm'
  gem 'puma'
end
