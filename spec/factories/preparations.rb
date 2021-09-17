FactoryBot.define do
  factory :preparation do
    reason           {Faker::Lorem.sentence}
    get_ability      {Faker::Lorem.sentence}
    status           {Faker::Lorem.sentence}
    prior_knowledge  {Faker::Lorem.sentence}
    unknown          {Faker::Lorem.sentence}
    association :book
  end
end
