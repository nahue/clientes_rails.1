# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "example@example.com"
    password "example123123"
    password_confirmation "example123123"
  end
end
