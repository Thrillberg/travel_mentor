Fabricator(:conversation) do
  sender_id { Faker::Number.number }
  recipient_id { Faker::Number.number }
end