FactoryBot.define do
  factory :processor do
    key { Faker::Alphanumeric.unique.alpha(number: 10) }
    name { Faker::Commerce.product_name }
  end
end
