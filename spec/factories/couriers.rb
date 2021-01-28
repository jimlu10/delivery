FactoryBot.define do
  factory :courier do
    key { Faker::Alphanumeric.unique.alpha(number: 10) }
    name { Faker::Commerce.product_name }
    tracking_number_digits { 10 }
    association :configuration

    trait :dhl do
      key { 'dhl' }
      name { 'DHL Express' }
      tracking_number_digits { '5..10' }
    end
  end
end
