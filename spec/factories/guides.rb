FactoryBot.define do
  factory :guide do
    trait :fedex_guide do
      tracking_number { Faker::Number.number(digits: 10) }
      status { 'created' }
      association(:courier, :fedex)
    end
  end
end
