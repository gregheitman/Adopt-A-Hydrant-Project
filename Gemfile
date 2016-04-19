source 'http://rubygems.org'
ruby '2.2.4'

gem 'rails', '~> 4.2.6'

gem 'arel'
gem 'coffee-script-source', '1.8.0'
gem 'devise'
gem 'geokit'
gem 'haml'
gem 'http_accept_language'
gem 'nokogiri'
gem 'pg'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
gem 'rails_12factor'
gem 'rails_admin'
gem 'validates_formatting_of'

platforms :ruby_18 do
  gem 'fastercsv'
end

group :assets do
  gem 'sass-rails', '>= 4.0.3'
  gem 'uglifier'
end

group :development do
  gem 'spring'
end

group :production do
  gem 'puma'
  gem 'skylight'
end

group :test do
  gem 'coveralls', require: false
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'sqlite3'
  gem 'webmock'
end
