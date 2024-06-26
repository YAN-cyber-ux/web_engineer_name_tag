# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  User.create(
    nickname: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
end

10.times do 
  NameTag.create(
    user: User.offset(rand(User.count)).first,
    publicity: [true, false].sample
  )
end

# Tag.create(name: 'Tag_1', image_url: ActionController::Base.helpers.asset_path('tag1.png'))
# Tag.create(name: 'Tag_2', image_url: ActionController::Base.helpers.asset_path('tag2.png'))

Logo.create(
  name: 'Ruby', image_url: "https://web-engineer-name-tag.s3.ap-northeast-1.amazonaws.com/assets/images/ruby.png"
)
