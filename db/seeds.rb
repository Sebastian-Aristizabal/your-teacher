# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Booking.destroy_all
Student.destroy_all
Teacher.destroy_all
User.destroy_all

require 'faker'

# PARA MATEMATICAS
3.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456,
    role: "Teacher"
  )
  Teacher.create(
    user_id: user.id,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Job.position,
    time_cost_per_hour: rand(40000..50000).to_i,
    rating: rand(1..10).to_i,
    subject: "Maths"
  )
end

# PARA INGLES
3.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456,
    role: "Teacher"
  )
  Teacher.create(
    user_id: user.id,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Job.position,
    time_cost_per_hour: rand(40000..50000).to_i,
    rating: rand(1..10).to_i,
    subject: "English"
  )
end

# PARA PROGRAMACION
3.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456,
    role: "Teacher"
  )
  Teacher.create(
    user_id: user.id,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Job.position,
    time_cost_per_hour: rand(40000..50000).to_i,
    rating: rand(1..10).to_i,
    subject: "Coding"
  )
end

# PARA ESPAÑOL
3.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456,
    role: "Teacher"
  )
  Teacher.create(
    user_id: user.id,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Job.position,
    time_cost_per_hour: rand(40000..50000).to_i,
    rating: rand(1..10).to_i,
    subject: "Spanish"
  )
end

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456,
    role: "Student"
  )
  Student.create(
    user_id: user.id,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: "Student"
  )
end

# user_1 = User.create!(first_name: "Daniel", last_name: "Soriano" , email: "daniel@gmail.com", password: "123456", role: "Teacher")
# user_2 = User.create!(first_name: "Sebastián", last_name: "Aristizábal", email: "sebastian@gmail.com", password: "123456", role: "Student")
# user_3 = User.create!(first_name: "Andrea", last_name: "Soriana" , email: "dsoariana@gmail.com", password: "123456", role: "Teacher")
# user_4 = User.create!(first_name: "Jaimito", last_name: "Soriano" , email: "sorano@gmail.com", password: "123456", role: "Teacher")
# user_5 = User.create!(first_name: "Beatriz", last_name: "Fernandes", email: "beatriz@gmail.com", password: "123456", role: "Student")
# user_6 = User.create!(first_name: "Manuel", last_name: "Castaño", email: "manuel@gmail.com", password: "123456", role: "Teacher")
# user_7 = User.create!(first_name: "Sara", last_name: "Munera", email: "sara@gmail.com", password: "123456", role: "Teacher")
# user_8 = User.create!(first_name: "Camilo", last_name: "Perez", email: "camilo@gmail.com", password: "123456", role: "Teacher")

# Teacher.create!(user_id: user_1.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes colgados", time_cost_per_hour: 20000,rating: 4, subject: "Matematicas")
# Teacher.create!(user_id: user_3.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes super dotados", time_cost_per_hour: 20000,rating: 4, subject: "Matematicas")
# Teacher.create!(user_id: user_4.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes flojos", time_cost_per_hour: 20000, rating: 4, subject: "Matematicas")
# Student.create!(user_id: user_2.id, phone_number: "+57 305 022 6602", description: "estudiante necesitando profesor")
# Student.create!(user_id: user_5.id, phone_number: "+57 305 022 6602", description: "estudiante necesitando profesor")
# Teacher.create!(user_id: user_6.id, phone_number: "+57 305 022 6602", description: "Profe de inglés", time_cost_per_hour: 20000, rating: 4, subject: "Ingles")
# Teacher.create!(user_id: user_7.id, phone_number: "+57 305 022 6602", description: "Profe de programación", time_cost_per_hour: 20000, rating: 4, subject: "Programacion")
# Teacher.create!(user_id: user_7.id, phone_number: "+57 305 022 6602", description: "Profe de español", time_cost_per_hour: 20000, rating: 4, subject: "Español")

# Booking.create!(student_id: 1, teacher_id: 1, online: true, place: "mi casa", status: true, date: '1/1/22', time_starting: '1/1/22 %1:01:00', time_ending: '1/1/22 %1:02:00', rating_student: 4 , cost: 20000)
