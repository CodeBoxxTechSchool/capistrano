# How-To

1. Use only what you need from the `Gemfile` and copy/paste it to your **own** `Gemfile`. Basically it would be gems related to Capistrano, something like these ones inside the **development group** of your Gemfile
   ```ruby
   gem 'capistrano', '~> 3.10', require: false
   gem 'capistrano-rails', '~> 1.4', require: false
   gem 'capistrano-bundler', '>= 1.1.0'
   gem 'rvm1-capistrano3', require: false
   gem 'capistrano3-puma'
   ```
1. From this repository, copy/paste those files to the same path of your existing application: `Capfile`, `/config/deploy.rb`, `/config/deploy/production.rb`
1. The `Capfile` file needs to be at the root of your project
1. Inside the file `/config/deploy.rb`, update your application name and your repository url
1. Inside the file `/config/deploy/production.rb`, update the `deploy_to` path
