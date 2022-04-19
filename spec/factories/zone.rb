# frozen_string_literal: true

FactoryBot.define do
  factory :zone do
    association :user
    zone_name { Faker::Lorem.word }
  end
end
