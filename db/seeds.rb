puts "🌱Seeding..."
#Removes potential duplicate data
Role.destroy_all
Audition.destroy_all

20.times do
    Role.create(
        character_name: Faker::Movies::Ghostbusters.character
    )
end
50.times do
    Audition.create(
        actor: Faker::Movies::Ghostbusters.actor,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.cell_phone,
        hired: Faker::Boolean.boolean,
        role_id: Role.ids.sample #gives random integer from array of Role IDs

    )
end
puts "🌱Done Seeding!"


