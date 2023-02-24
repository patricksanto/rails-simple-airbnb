require 'faker'

30.times do
  flat = Flat.new(
    name: Faker::Address.community,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence(word_count: 60, supplemental: false, random_words_to_add: 4),
    price_per_night: (50..300).to_a.sample,
    number_of_guest: (2..8).to_a.sample)
  flat.save
end
