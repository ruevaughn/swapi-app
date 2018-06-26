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

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Usually I use the http library in Ruby to fetch from an API or some other method but i've always wanted to try httparty.
# https://github.com/jnunemaker/httparty#help-and-docs
gem 'httparty', '~> 0.16.2'


gem 'swgem', '~> 1.0'

# Non Core Gems that can help in displaying information
gem 'awesome_print', '~> 1.8'


group :development, :test do
  # Testing Gems for both Development and Test Rails Environments
  # rspec-rails contains: rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
end

group :development do
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


# # EXPERIMENTAL # #
# I've always used pry solely in test and development. However, you can use it in heroku
# So for the first time i'm breaking it out of the test and development groups
# So I can use it on heroku and see if it's worth it. If you leave a binding.pry in
# It breaks either way
# Might as well have it not me a no method error! No but really i just want to try it.

# Trying out pry-byebug - i've typically used pry-rails
# https://github.com/deivid-rodriguez/pry-byebug#commands - example usage of next, step, continue, break, etc. Sweet!
# https://github.com/kyrylo/pry-theme/wiki/Pry-Theme-CLI
gem 'pry', '~> 0.11.3'
# Using pry-byebug https://github.com/deivid-rodriguez/pry-byebug
gem 'pry-byebug', '~> 3.6'
# Pry Doc for when you just can't leave your code but have to know what Rails or a Gem/Library is doing!
# show-doc and show-method commands.
# https://github.com/pry/pry/wiki/Source-browsing
gem 'pry-doc', '~> 0.13.4'
# I obviously like pry
gem 'pry-stack_explorer', '~> 0.4.9.2'
gem 'pry-state', '~> 0.1.10'
# Uses JSON, Nokogiri and CodeRay to highlight and prettify JSON, XML, HTML, Ruby and anything else CodeRay supports!
gem 'pry-highlight', '~> 0.1.0'

# A mini view framework for console/irb that's easy to use, even while under its influence.
# Console goodies include a no-wrap table, auto-pager, tree and menu.
gem 'hirb', '~> 0.7.3'


# Going to try monokai / 256
gem 'pry-theme', '~> 1.2'
