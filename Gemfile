source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails'
gem 'simple_form'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass'
gem 'pg', group: :production
gem 'rails_admin', '~> 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'cancancan', '~> 1.10'
gem 'github-markdown', '~> 0.6.9'
gem 'github-markup'
gem 'auto_html'
gem 'sentry-raven'

group :development, :test do
  gem 'pry-meta', '0.0.10'
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara'
  gem 'simplecov'
  gem "factory_girl_rails", "~> 4.0"
  gem 'sqlite3'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
