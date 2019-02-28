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
   AdminUser.create!(email: 'admin@example.com',
     password: 'password',
     password_confirmation: 'password')

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
when "production"
end
