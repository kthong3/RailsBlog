FactoryBot.define do
  factory :user do
    name { Faker::TvShows::Friends.character } 
    email { Faker::Internet.email }
    password { "password"} 
    password_confirmation { "password" }
    admin { false }
  end
end