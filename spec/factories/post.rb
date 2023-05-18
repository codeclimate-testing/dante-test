FactoryBot.define do
  factory :post do
    author
    title { "Some title" }
    body { Faker::Quote.jack_handey[0..139] }
  end
end
