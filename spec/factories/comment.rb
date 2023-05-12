FactoryBot.define do
  factory :comment do
    author
    post
    body { Faker::Quote.jack_handey[0..139] }
  end
end
