puts 'test'

15.times do
    Role.create(character_name: Faker::Movies::HowToTrainYourDragon.character)
end

30.times {
    Audition.create(
        actor: Faker::Name.name,
        location: ['NY', 'SF', 'Denver', 'Seattle'].sample,
        phone: Faker::PhoneNumber.phone_number,
        hired: [true, false].sample,
        role_id: Role.all.sample.id
    )
}
