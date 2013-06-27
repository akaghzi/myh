source 'https://rubygems.org'
ruby "2.0.0"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0.rc2'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',  '~> 4.0.0.rc2'
  gem 'coffee-rails', '~> 4.0.0.rc2'
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'bootstrap-datepicker-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "twitter-bootstrap-rails"
# Required by heroku for RAILS 4
group :production do
	gem 'rails_12factor'
end

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '>= 1.0.1'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '>= 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
group :development do
 gem 'debugger'
  gem 'annotate'
end

# Heroku requirements
group :production do
  gem 'rails_log_stdout', github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end
