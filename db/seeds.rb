
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create admin user
# First, delete all users
User.delete_all

email = Rails.application.credentials.admin[:email]
password = Rails.application.credentials.admin[:password]
user = User.where(email: email).first_or_initialize
user.update!(
  password: password,
  password_confirmation: password
)
