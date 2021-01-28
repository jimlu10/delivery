FactoryBot.define do
  factory :courier do
    key { Faker::Alphanumeric.unique.alpha(number: 10) }
    name { Faker::Commerce.product_name }
    tracking_number_digits { '10' }

    trait :fedex do
      key { 'fedex' }
      name { 'Fedex Company' }
      tracking_number_digits { '5..10' }

      after(:create) do |courier, evaluator|
        create_list(:configuration, 1, :fedex_configuration, courier: courier)
        courier.configuration = courier.configurations.first
        courier.save
      end
    end
  end
end
