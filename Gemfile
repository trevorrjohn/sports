source 'https://rubygems.org'

ruby '2.1.2'
gem 'rails', '4.1.2'

gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'therubyracer',  platforms: :ruby
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'spring'
  gem 'thin'
end

group :development, :test do
  gem 'factory_girl_rails', github: 'tjohn/factory_girl_rails', branch: 'tj/allow_optional_dir_param'
  gem 'ffaker'
  gem 'pry-nav'
  gem 'rspec-rails'
end

group :production, :staging do
  gem 'unicorn'
end
