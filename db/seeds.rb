# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Student.destroy_all
Teacher.destroy_all
User.destroy_all

user_1 = User.create(first_name: "Daniel", last_name: "Soriano" , email: "daniel@gmail.com", password: "123456", role: "Teacher")
user_2 = User.create(first_name: "Sebastián", last_name: "Aristizábal", email: "sebastian@gmail.com", password: "123456", role: "Student")
user_3 = User.create(first_name: "Andrea", last_name: "Soriana" , email: "dsoariana@gmail.com", password: "123456", role: "Teacher")
user_4 = User.create(first_name: "Jaimito", last_name: "Soriano" , email: "sorano@gmail.com", password: "123456", role: "Teacher")
user_5 = User.create(first_name: "Beatriz", last_name: "Fernandes", email: "beatriz@gmail.com", password: "123456", role: "Student")
user_6 = User.create(first_name: "Manuel", last_name: "Castaño", email: "manuel@gmail.com", password: "123456", role: "Teacher")
user_7 = User.create(first_name: "Sara", last_name: "Munera", email: "sara@gmail.com", password: "123456", role: "Teacher")
user_8 = User.create(first_name: "Camilo", last_name: "Perez", email: "camilo@gmail.com", password: "123456", role: "Teacher")

Teacher.create(user_id: user_1.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes colgados", time_cost_per_hour: 20000,rating: 4, subject: "Matematicas")
Teacher.create(user_id: user_3.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes super dotados", time_cost_per_hour: 20000,rating: 4, subject: "Matematicas")
Teacher.create(user_id: user_4.id, phone_number: "+57 305 022 6602", description: "Profesor de matematicas para estudiantes flojos", time_cost_per_hour: 20000,rating: 4, subject: "Matematicas")
Student.create!(user_id: user_2.id, phone_number: "+57 305 022 6602", description: "estudiante necesitando profesor")
Student.create!(user_id: user_5.id, phone_number: "+57 305 022 6602", description: "estudiante necesitando profesor")
Teacher.create!(user_id: user_6.id, phone_number: "+57 305 022 6602", description: "Profe de inglés", time_cost_per_hour: 20000, rating: 4, subject: "Ingles")
Teacher.create!(user_id: user_7.id, phone_number: "+57 305 022 6602", description: "Profe de programación", time_cost_per_hour: 20000, rating: 4, subject: "Programacion")
Teacher.create!(user_id: user_7.id, phone_number: "+57 305 022 6602", description: "Profe de español", time_cost_per_hour: 20000, rating: 4, subject: "Español")
