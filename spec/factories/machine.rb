FactoryBot.define do
  factory :machine do
    association :city
    association :user
    machine_name { Faker::Lorem.word }
    serial_number { Faker::Lorem.word }
  end
end
