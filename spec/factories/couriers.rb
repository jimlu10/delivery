FactoryBot.define do
  factory :courier do
    key { Faker::Alphanumeric.unique.alpha(number: 10) }
    name { Faker::Commerce.product_name }
    tracking_number_digits { 10 }


  end
end
