puts "Seeding data..."

20.times do
   Song.create(
      title: Faker::Verb.base,
      runtime_in_minutes: rand(2..10),
      artist_name: Faker::Name.first_name
   )
end

10.times do
   KaraokeSinger.create(
      name: Faker::Name.first_name,
      number_of_drinks: rand(0..10)
   )
end

50.times do
   Singing.create(
      karaoke_singer_id: rand(1..15),
      song_id: rand(1..20)
   )
end

puts "Done seeding."