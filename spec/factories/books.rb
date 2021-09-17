FactoryBot.define do
  factory :book do
    book_title              {Faker::Book.title}
    author                  {Faker::Book.author}
    total_page              {Faker::Number.number(digits: 3)}
    association :user 
  end
end
