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
gem 'bootstrap', '~> 4.1', '>= 4.1.1'

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

# # #
# swapi.co API gem options
# Installing locally
# gem install swgem --version '1.0' --install-dir 'vendor'
# # #

# Gems for interfacing with swapi.co api.

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
# Going to try monokai / 256
gem 'pry-theme', '~> 1.2'

# A mini view framework for console/irb that's easy to use, even while under its influence.
# Console goodies include a no-wrap table, auto-pager, tree and menu.
gem 'hirb', '~> 0.7.3'
# Non Core Gems that can help in displaying information
gem 'awesome_print', '~> 1.8'

