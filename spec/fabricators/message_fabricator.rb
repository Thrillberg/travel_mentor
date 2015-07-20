Fabricator(:message) do
  body { Faker::Lorem.paragraph }
  conversation_id { Faker::Number.number }
  user_id { Faker::Number.number }
end