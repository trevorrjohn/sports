# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :athlete do
    name { Faker::Name.name }
    espn_id { Faker::Lorem.characters(10) }
  end
end
