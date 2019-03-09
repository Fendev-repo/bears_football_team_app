# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

case Rails.env
when "development"
  # ActiveAdmin default admin user
   AdminUser.create!(email: 'fendev@protonmail.com',
     password: 'cheeseandbeer',
     password_confirmation: 'cheeseandbeer')



  # 10 standard 'devise confirmed' users
   10.times do |num|
     User.create(first_name: "#{['jenni', 'sandi', 'john', 'bill'].sample}",
                  last_name: "#{['williams', 'white', 'jones'].sample}",
                  email: "test#{num}@test.com",
                  password: "#{num}password")
   end
   User.all.each do |user|
      user.confirm
   end

  postions =  ['quarterback', 'center'] +
              ['running back', 'fullback'] +
              ['wide receiver', 'tight end' ] +
              ['left-right guard', 'left-right tackle'] +
              ['defensive tackle', 'defensive end'] +
              ['linebacker', 'safety', 'cornerback']

   User.all.each do |user|
      user.create_profile(background: "This is backgound #{user}",
                         start_date: DateTime.now.to_date,
                         image: Faker::Avatar.image, 
                         pb_bench_press_kg: "#{rand(20..100)}",
                         pb_squat_weight_kg: "#{rand(20..100)}",
                         pb_100mtr_sprint_seconds: "#{rand(20..100)}",
                         height: "#{rand(60..150)}",
                         weight: "#{rand(60..200)}",
                         current_position: "#{ postions.sample }" ).save
   end
when "production"
end
