# README

This README would normally document whatever steps are necessary to get the
application up and running.

01.  $ gem install rails
02.  $ rails new map-my-brewery --database=postgresql --skip-turbolinks --skip-test-unit --skip-active-storage
03.  $ cd map-my-brewery
04.  $ gem install pry-rails
     $ gem install geokit
     $ gem install 'geokit-rails'
     $ gem install dotenv
     $ gem install 'dotenv-rails'

05.  Edit 'Gemfile' by adding:

      gem 'pry-rails', group: [:development, :test]
      gem 'dotenv', '~> 2.5'
      gem 'dotenv-rails', group: [:development, :test]
      gem 'geokit'
      gem 'geokit-rails'

06.  $ bundle install
07.  $ rails g geokit_rails:install

08.  Edit '/config/initializers/geokit_config.rb' by uncommenting out the following:

      Geokit::Geocoders::GoogleGeocoder.api_key = ENV["GOOGLE_API_KEY"]
      Geokit::Geocoders::provider_order = [:google]

09.  Create '.env' at the root of the project and add the following:

      GOOGLE_API_KEY="<the key here>"

10.  Edit '.gitignore' by adding the .env file under # Ignore master key for decrypting credentials and more.

      # Ignore master key for decrypting credentials and more.
      /config/master.key
      .env

11.  $ bundle exec rake db:create
12.  $ bundle exec rails generate migration create_brews
13.  $ bundle exec rake db:migrate && bundle exec rake db:rollback && bundle exec rake db:migrate

14.  To start app:

      $ bundle exec rails server --binding=0.0.0.0

15.  Visit:

      http://localhost:3000/
