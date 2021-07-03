source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'

gem 'bootsnap', '>= 1.1.0', require: false


gem 'rack-cors'

group :development, :test do  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 5.0"
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem "shoulda-matchers", "~> 4.5"
  gem "simplecov", "~> 0.21.2", require: false 
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "sqlite3", "= 1.3.13", :group => :development
