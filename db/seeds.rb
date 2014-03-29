# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Dog.delete_all

Dog.create!(user_id:1, name: 'Kobe', race: 'Poodle', color: 'brown', age:4, image:'images/poodle.jpg')
Dog.create!(user_id:2, name: 'Nukka', race: 'Husky', color: 'gray', age:2, image:'images/husky.jpg')
Dog.create!(user_id:3, name: 'Cujo', race: 'pug', color: 'beige', age:6, image:'images/pug.jpg')
Dog.create!(user_id:1, name: 'Peabody', race: 'Unknown', color: 'white', age:19, image:'images/peabody.jpg')


User.create!(id: 1,
	     username: 'Winter',
             password: 'babyboy',
	     forname: 'William',
	     lastname: 'Wright',
	     age: 21,
	     city: 'Gatineau',
             occupation: 'I am a student'
             )

User.create!(
             id: 2,  		
	     username: 'Summer',
             password: 'goodyear',
	     forname: 'John',
	     lastname: 'Smith',
	     age: 34,
	     city: 'Nepean',
             occupation: 'I am a police officer'
             )

User.create!(
             id: 3,
	     username: 'Autumn',
             password: 'fluffypie123',
	     forname: 'Celeste',
	     lastname: 'Degeneres',
	     age: 8,
	     city: 'Nepean',
             occupation: 'I am a fairy'
             )
