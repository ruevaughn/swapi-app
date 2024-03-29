source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com
gem 'bootstrap', '~> 4.3'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Static page caching for Action Pack (removed from core in Rails 4.0)
gem 'actionpack-page_caching', '~> 1.1'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0', '>= 4.0.1'
# Ruby wrapper for hiredis (protocol serialization/deserialization and blocking I/O)
gem 'hiredis', '~> 0.6.1'

# HTTP/REST API client library.
gem 'faraday', '~> 0.15.2'
# Simple, efficient background processing for Ruby.
gem 'sidekiq', '~> 5.1', '>= 5.1.3'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# # #
# swapi.co API gem options - Simple, efficient background processing for Ruby.
# Installing locally
# gem install swgem --version '1.0' --install-dir 'vendor'
# # #

# Is a wrapper from http://swapi.co
# gem 'swgem', '~> 1.0'

# A Ruby interface to SWAPI (the Star Wars API). http://swapi.co/
# gem 'tatooine', '~> 1.0', '>= 1.0.1'

# Ruby bindings for the Star Wars API
# gem 'red5', '~> 0.0.5'

# A wrapper gem that handles interactions with the Star Wars Api
# gem 'swapir', '~> 2.0', '>= 2.0.1'

# A Ruby interface to the awesome swapi.co api, it matches each api with a resource and method
# gem 'starwars', '~> 0.0.2'

# This is a wrapper from http://swapi.co
# gem 'swgem', '~> 1.0'


group :development, :test do
  # Testing Gems for both Development and Test Rails Environments
  # rspec-rails contains: rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker', '~> 1.8', '>= 1.8.7'
end

group :development do
  # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  # Binstub for rspec
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# If you are developing on windows or some other use case uncomment this gem as needed.
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# # # # # # PRY EXPERIMENTAL# # # # # # #
# #           PRY Setup               # #
# # ~/.pryrc                          # #
# # ~/.pryrc-helpers.rb               # #
# # ~/.pry/themes/monokai.prytheme.rb # #
# # ~/.pry/themes/see-dotsfiles.rb    # #
# # # # # # # # # # # # # # # # # # # # #

# I've always used pry solely in test and development. However, you can use it in heroku
# So for the first time i'm breaking it out of the test and development groups
# So I can use it on heroku and see if it's worth it. If you leave a binding.pry in
# It breaks either way
# Might as well have it not me a no method error! No but really i just want to try it.

# Pry Doc for when you just can't leave your code but have to know what Rails or a Gem/Library is doing!
# show-doc and show-method commands.
# https://github.com/pry/pry/wiki/Source-browsing
gem 'pry-doc', '~> 0.13.4'
gem 'pry-state', '~> 0.1.10'
# Going to try monokai / 256
gem 'pry-theme', '~> 1.2'

# Non Core Gems that can help in displaying information
gem 'awesome_print', '~> 1.8'

