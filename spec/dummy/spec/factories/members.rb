# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    first {Faker::Name.first_name}
    last {Faker::Name.last_name}
    email {Faker::Internet.safe_email}
    nickname {Faker::Name.first_name}
  end
end
