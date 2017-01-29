# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create(course_number: 34766, course_name: 'Sftwre Dsgn for Mobile Devices',
              course_description: 'Class aiming to create mobile applications', course_week_date: 'TR',
              course_time: '16:00', course_room_number: 1007, professor: 'Gordon')

Course.create(course_number: 32659, course_name: 'Principles of Programming Languages',
              course_description: 'Class used to discover how programming languages are used in the world',
              course_week_date: 'TR', course_time: '12:00', course_room_number: 1009, professor: 'Schultz')
Course.create(course_number: 35712, course_name: 'Modern Web Application Architect',
              course_description: 'Class used to discover how web applications using a variaty of different frameworks',
              course_week_date: 'TR', course_time: '8:00', course_room_number: 10, professor: 'Beaty')
Course.create(course_number: 30229, course_name: 'Foundations of Geometry',
              course_description: 'Mathmatics class to discover and study Euclidian and Non-Euclidian Geometry',
              course_week_date: 'TR', course_time: '11:00', course_room_number: 1010, professor: 'Dollard')