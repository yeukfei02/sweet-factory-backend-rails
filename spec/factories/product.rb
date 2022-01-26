FactoryBot.define do
  factory :product do
    association :machine
    association :city
    association :user
    product_name { Faker::Lorem.word }
    product_description { Faker::Lorem.word }
    price { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    quantity { Faker::Number.number(digits: 2) }
  end
end
