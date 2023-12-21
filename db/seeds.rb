
require 'faker'

# Seed Powers
puts "Seeding Powers..."
5.times do |i|
  power = Power.create(
    name: Faker::Superhero.power,
    description: Faker::Lorem.sentence
  )
  if power.valid?
    puts "Power #{power.id} created successfully!"
  else
    puts "Error creating Power: #{power.errors.full_messages.join(', ')}"
  end
end

# Seed Heroes
puts "\nSeeding Heroes..."
10.times do
  hero = Hero.new(
    name: Faker::Superhero.name,
    super_name: Faker::Superhero.descriptor
  )
  if hero.save
    puts "Hero #{hero.id} created successfully!"
  else
    puts "Error creating Hero: #{hero.errors.full_messages.join(', ')}"
  end
end

