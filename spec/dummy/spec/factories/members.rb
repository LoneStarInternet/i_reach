# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    first "MyString"
    last "MyString"
    email "MyString"
    nickname "MyString"
  end
end
