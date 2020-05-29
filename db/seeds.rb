# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([{ name: 'Albus Dumbledore' }, { name: 'Severus Snape' }, { name: 'Minerva McGonagall' }])
Assignment.create(title: 'Spells Homework', teacher: teachers.first, due_date: Date.today)
students = Student.create([{ name: 'Harry Potter', teacher: teachers.first }, { name: 'Ron Weasley', teacher: teachers.first }, { name: 'Heromine Granger', teacher: teachers.first }])
Submission.create(assignment: Assignment.first, student: students.first, grade: 90.00)