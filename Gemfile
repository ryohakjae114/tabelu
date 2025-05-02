source 'https://rubygems.org'

gem 'rails', '~> 8.0.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise'
gem 'haml-rails'
# 仕様変更によるリスクが大きいので指定
gem 'pg', '~> 1.5.9'
gem 'propshaft'
# 仕様変更によるリスクが大きいので指定
gem 'puma', '>= 5.0'
gem 'turbo-rails'

group :development, :test do
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'factory_bot_rails'
end

group :development do
  gem 'sgcop', github: 'SonicGarden/sgcop', branch: 'main'
  gem 'web-console'
end

group :test do
  gem 'rspec-rails'
end
