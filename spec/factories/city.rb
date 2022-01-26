FactoryBot.define do
  factory :city do
    association :zone
    association :user
    city_name { Faker::Lorem.word }
    area { Faker::Lorem.word }
  end
end
