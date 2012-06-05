source 'https://rubygems.org'

gem 'rails', '3.2.2'


gem 'gravatar_image_tag'
gem 'will_paginate'
gem 'multi_json'
gem 'jquery-rails'

# Database

gem 'sqlite3'

# if it's still necessary to use postgres for heroku, use this:
#group :development, :test do
#  gem 'sqlite3' 
#end
#
#group :production do
#  gem 'pg'
#end


group :test,:development do
  gem 'rspec-rails'
end

group :test do
  gem 'webrat'
  gem 'spork'
  gem 'factory_girl_rails'

  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end






# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
