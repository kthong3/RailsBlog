#Rails Blog

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
- Added Rspec

## Challenges
- Devise gem is particular about how User model is used so I had to find examples and look at the documentation a few times to customize the User model to have the `name` and `admin` fields.

### Next Steps
- add testing for articles and users
- refactor current code and clean up views
- add flexbox to show grid view of articles
- add draft or publish features to articles
- show features to only authors
- create user profiles
- add comments for articles
- add flagging and favorite for articles
- add favoriting for comments
- add hashtag feature to make articles searchable
- host on heroku