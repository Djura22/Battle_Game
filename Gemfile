source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :development do 
	gem 'sinatra'
	gem 'capybara'
end

group :test do
	gem 'rspec'
	gem 'rubocop', '0.79.0'
	gem 'simplecov', require: false, group: :test
  gem 'simplecov-console', require: false, group: :test
end
