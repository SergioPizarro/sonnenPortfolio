# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating the Produkte..."
Produkte.create(tittle:"Pakete", description:"Energielösungen für Ihr Zuhause.")
Produkte.create(tittle:"Hardware", description:"Stromspeicher und Notstromlösungen.")
Produkte.create(tittle:"Stromtarife", description:"Saubere Energie - mit und ohne PV-Anlage. ")
Produkte.create(tittle:"E-Mobilität", description:"Endlich sauber Autofahren und tanken.")
Produkte.create(tittle:"Flexibilität", description:"Flexibel in Ihre Energiezukunft investieren.")
puts "5 Produkte created"

puts "creating the cards with Faker Gem"

5.times do |i|
  card = Card.create(
    tittle: Faker::ElectricalComponents.active,
    description: Faker::TvShows::MichaelScott.quote,
    produkte_id:1
  )
  puts "#{i + 1}. #{card.tittle} created for #{card.produkte.tittle}"
end

4.times do |i|
  card = Card.create(
    tittle: Faker::ElectricalComponents.active,
    description: Faker::TvShows::RickAndMorty.quote,
    produkte_id:2
  )
  puts "#{i + 1}. #{card.tittle} created for #{card.produkte.tittle}"
end

3.times do |i|
  card = Card.create(
    tittle: Faker::ElectricalComponents.active,
    description: Faker::TvShows::BigBangTheory.quote,
    produkte_id:3
  )
  puts "#{i + 1}. #{card.tittle} created for #{card.produkte.tittle}"
end

2.times do |i|
  card = Card.create(
    tittle: Faker::ElectricalComponents.active,
    description: Faker::TvShows::HowIMetYourMother.quote,
    produkte_id:4
  )
  puts "#{i + 1}. #{card.tittle} created for #{card.produkte.tittle}"
end

2.times do |i|
  card = Card.create(
    tittle: Faker::ElectricalComponents.active,
    description: Faker::TvShows::Simpsons.quote,
    produkte_id:5
  )
  puts "#{i + 1}. #{card.tittle} created for #{card.produkte.tittle}"
end

puts "Finished!"
