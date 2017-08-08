source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails', '5.0.0'

gem 'jquery-turbolinks'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# The administration framework for Ruby on Rails
gem 'activeadmin', '1.0.0.pre2'

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 3.2'

# Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location.
gem 'cancan'

# Draper adds an object-oriented layer of presentation logic to your Rails apps.
gem 'draper'

# Object oriented authorization for Rails applications
gem 'pundit'

# Kaminari is a Scope & Engine based, clean, powerful, agnostic, customizable and sophisticated paginator for Rails 3+
gem 'kaminari', '~> 0.15'

# Faster Faker, generates dummy data.
gem 'ffaker'

# will_paginate provides a simple API for performing paginated queries with Active Record, DataMapper and Sequel, and includes helpers for rendering pagination links in Rails, Sinatra and Merb web apps.
 gem 'will_paginate', '~> 3.0.7'

# Hooks into will_paginate to format the html to match Twitter Bootstrap styling. Extension code was originally written by Isaac Bowen (https://gist.github.com/1182136).
 gem 'bootstrap-will_paginate', '~> 0.0.10'

# Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass
gem 'bootstrap-sass', '~> 3.3.5.1'

# Font-Awesome SASS gem for use in Ruby projects
gem 'font-awesome-sass', '~> 4.4.0'

gem 'sprockets', '~> 3.6.0'

# The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.
gem 'aws-sdk'

# Making it easy to serialize models for client-side use
gem 'active_model_serializers'

# Rails engine for cache-friendly, client-side local time
gem 'local_time'

gem 'wkhtmltopdf-binary'
gem 'wicked_pdf'
gem 'country_select'

gem "ckeditor"
gem 'paperclip'
gem 'paperclip-ghostscript'
gem "cocaine"
gem 'paperclip-ffmpeg'

gem 'aws-sdk-v1'

gem 'social-share-button'
gem 'pdfjs_viewer-rails'

# Pg is the Ruby interface to the {PostgreSQL RDBMS}
gem 'pg'
gem 'rack-cache'

gem 'twitter', '~> 5.15'

gem 'browser'

gem 'video_info'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'railroady'
  # railroady -M | dot -Tsvg > models.svg
end

group :production do
  gem 'yui-compressor'
  gem 'heroku-deflater'

  # This gem enables serving assets in production and setting your logger to standard out
  gem 'rails_12factor'
  
  # Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications.
  # Puma is intended for use in both development and production environments. 
  # In order to get the best throughput, it is highly recommended that you use a Ruby implementation with real threads like Rubinius or JRuby.
  gem 'puma'
end
