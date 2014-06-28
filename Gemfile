source 'https://rubygems.org'

ruby '2.1.2'
gem 'rails', '4.1.2'

gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :development do
  gem 'pry'
  gem 'pry-nav'
end

group :development, :test do
  gem 'rspec-rails'
end

group :production, :staging do
  gem 'unicorn'
end
