FactoryBot.define do
  factory :zone do
    association :user
    zone_name { Faker::Lorem.word }
  end
end
