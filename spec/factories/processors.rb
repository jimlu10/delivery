FactoryBot.define do
  factory :processor do
    key { Faker::Alphanumeric.unique.alpha(number: 10) }
    name { Faker::Commerce.product_name }
  end

  factory :fedex_direct, parent: :processor, class: Processor::FedexDirect do
    id { 1 }
    key { 'fedex_direct' }
    name { 'Fedex Direct' }
  end
end
