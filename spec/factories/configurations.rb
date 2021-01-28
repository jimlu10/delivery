FactoryBot.define do
  factory :configuration do
    association :courier

    trait :fedex_configuration do
      association(:create_processor, factory: :fedex_direct)


      after(:create) do |configuration, evaluator|
        configuration.tracking_processor = configuration.create_processor
        configuration.save
      end
    end
  end
end
