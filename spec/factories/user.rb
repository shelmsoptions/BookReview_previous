FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "FirstName_#{n}" }
    sequence(:last_name) { |n| "LastName_#{n}" }
    sequence(:email) { |n| "#{n}@test.com" }
    sequence(:password) { |n| "#{n}assword!" }
  end
end