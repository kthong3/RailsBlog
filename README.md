# Rails Blog

## App Features (currently)
- Simple CRUD app to create, edit, or delete articles
- Uses Devise gem for authenication/authorization
- View articles created by current user and other users

## Tech Stack 
- Ruby 2.6.5  
- Rails 6.0.3
- Postgresql 12

## System Requirements to Run Locally
Must have on your machine:
  - Ruby on Rails: `rails` and `ruby` (possibly through RVM or rbenv)
  - `git`
  - PSQL (`postgresql`)

## Running Locally
- Clone the git repository to your local machine.
- Install the Bundler gem (if you do not have it already): `gem install bundler`
- Bundle install the gems in the Gemfile: `bundle install`
- Create the database: `bundle exec rails db:create`
- Migrate the database: `bundle exec rails db:migrate`
- Fill the database with seed data: `bundle exec rails db:seed`
- Start the server:  `rails server` or simply `rails s` (hosts local server at `localhost:3000`)
- Visit `http://localhost:3000`

## Testing
- Added testing for Article and User models

## Challenges
- Devise gem is particular about how User model is used so I had to find examples and look at the documentation a few times to customize the User model to have the `name` and `admin` fields.

### Next Steps
- add tests for signing up, logging in, and signing out
- add draft or publish features to articles
- show features to only authors
- add flagging and favorite for articles
- create user profiles
- add comments for articles
- add favoriting for comments
- add hashtag feature to make articles searchable
- refactor current code and clean up views
- add flexbox to show grid view of articles
- host on heroku

## References
- [devise documentation](https://github.com/heartcombo/devise)
- https://guides.railsgirls.com/devise
- [devise how-to on adding custom fields](https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407)
- https://altalogy.com/blog/rails-6-user-accounts-with-3-types-of-roles/
- [betterspecs](https://www.betterspecs.org/)
- https://thoughtbot.com/blog/how-we-test-rails-applications
