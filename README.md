# Easy admin

A simple Rails 4 app that uses authentication and model management via ActiveAdmin.
For the sake of this example I've added a simple resource named POI (Point Of Interest) equipped with the attributes: name, latitude, longitude and notes.

## Self-setup

### Context

```shell
⎋ ruby -v
ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin13.0.0]
⎋ rails -v
Rails 4.0.1
```

### Installation and configuration

```shell
rails new easy-admin
cd easy-admin
echo "gem 'activeadmin', github: 'gregbell/active_admin'" >> Gemfile
bundle install
rails generate active_admin:install
rails generate active_admin:install User # say Yes to the question
bundle exec rake db:migrate

rails g model Poi name latitude longitude notes:text
bundle exec rake db:migrate
rails generate active_admin:resource Poi

rails server
```

## Usage

Open http://localhost:3000/admin

* username: admin@example.com
* password: password

## Sources

* https://github.com/gregbell/active_admin
* https://github.com/gregbell/active_admin/blob/master/docs/0-installation.md
