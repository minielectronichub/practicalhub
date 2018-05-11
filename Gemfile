source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'simple_form', '~> 3.5', '>= 3.5.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'devise', '~> 4.3'
gem 'cancancan', '~> 2.0'
gem 'font-awesome-sass','5.0.9'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'trix'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'acts_as_votable', '~> 0.11.1'
gem 'activeadmin', '~> 1.2', '>= 1.2.1'
gem 'responders'
group :development do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 3.3.0'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'

end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]