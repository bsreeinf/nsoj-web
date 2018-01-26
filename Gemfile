source 'https://rubygems.org'

ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'

# Pg is the Ruby interface to the {PostgreSQL RDBMS}
gem 'pg', '~> 0.20'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use jquery as the JavaScript library
 gem 'jquery-rails', '4.3.1'
 gem 'jquery-ui-rails', '5.0.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Lightweight fancy icons
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.2'
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-google-oauth2', '~> 0.5.2'

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'gritter', '~> 1.2'
gem 'pundit', '~> 1.1'

# ENV manager
gem 'figaro', '~> 1.1', '>= 1.1.1'

gem 'jquery-datatables-rails', '~> 3.4'
gem 'jcrop-rails-v2', '~> 0.9.12.3'
gem 'sitemap_generator', '~> 5.3', '>= 5.3.1'

# https://robots.thoughtbot.com/how-to-send-transactional-emails-from-rails-with-mandrill
gem 'mandrill-api'

gem 'rmagick', '~> 2.16'


# 
#  TEMP
# 
# //////
# The administration framework for Ruby on Rails
gem 'activeadmin'
# Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location.
gem 'cancan'

# Draper adds an object-oriented layer of presentation logic to your Rails apps.
gem 'draper'
# //////

# Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications.
# Puma is intended for use in both development and production environments. 
# In order to get the best throughput, it is highly recommended that you use a Ruby implementation with real threads like Rubinius or JRuby.
# gem 'puma'
gem "aws-sdk", "~> 2.3"
gem "paperclip"

# Rails engine for cache-friendly, client-side local time
gem 'local_time'

gem 'wkhtmltopdf-binary'
gem 'wicked_pdf'
gem 'country_select'

gem 'paperclip-ghostscript'
gem "cocaine"

gem 'social-share-button'
gem 'pdfjs_viewer-rails'

gem 'rack-cache'

gem 'twitter', '~> 5.15'

gem 'browser'

gem 'video_info'

gem 'rack-rewrite', '~> 1.5.0'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'

  gem 'meta_request'
  gem 'byebug', platform: :mri
    gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
    gem 'capybara'
    gem 'database_cleaner'
    gem 'pry-rails'
    gem 'fakes3'
    gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
    gem 'sprite-factory', '~> 1.7', '>= 1.7.1'
end

group :production do
  # This gem enables serving assets in production and setting your logger to standard out
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
