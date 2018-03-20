# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SOURCE = [ Faker::Seinfeld, Faker::StarWars, Faker::HarryPotter ]


User.destroy_all

u = User.create!(
  first_name: "Eileen",
  last_name:  "Ulry",
  email: 'coder4cbus@gmail.com',
  password: '93B!$cuit61',
  password_confirmation: '93B!$cuit61',
  password_salt: 'no clue',
  username: "coder3cbus",
  street_address: "2827 Shady Ridge Drive"
  city: "Westerville",
  state: "Ohio",
  zip: "43231",
  phone: "614-657-0072",
  crematory_name: "Only 1 Crematory",
  # bio: "Lorem ipsum dolnthor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)


20.times do |iteration|

  u = User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'dont care',
    password_confirmation: 'dont care',
    password_salt: Faker::SlackEmoji.objects_and_symbols,
    username: Faker::Internet.user_name(5..10),
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    phone: Faker::PhoneNumber.phone_number,
    crematory_name: Faker::ProgrammingLanguage.name,
    # bio: Faker::Lorem.sentences(4).join(" "),
  )

  # u.avatar = Rails.root.join("app/assets/images/stock-profile-#{iteration + 1}.jpeg").open

  create_users(u)

  u.save!
end

puts "done"
