FactoryGirl.define do
  factory :drink do
    sequence(:name) { |n| "#{Faker::Company.bs}-#{n}" }
    description Faker::Lorem.paragraph
  end
end
