# How-To

1. Use only what you need from the `Gemfile` and copy/paste it to your **own** `Gemfile`. Basically it would be gems related to Capistrano, something like these ones inside the **development group** of your Gemfile
   ```ruby
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'
   ```
1. Still in the `Gemfile`, make sure to use the same version as this template for the **puma gem**. Version 5 is installed by default in new application, so it should be changed manually.
   ```ruby
   gem 'puma', '~> 4.3.11'
   ```
1. From this repository, copy/paste those files to the same path of your existing application: `Capfile`, `/config/deploy.rb`, `/config/deploy/production.rb`
1. The `Capfile` file needs to be at the root of your project
1. Inside the file `/config/deploy.rb`, update your application name and your repository url
1. Inside the file `/config/deploy/production.rb`, update the `app` name on line 11
