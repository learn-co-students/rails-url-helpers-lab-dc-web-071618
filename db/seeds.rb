# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student_names = [
  {first_name: 'John', last_name: 'Raber'},
  {first_name: 'Caleb', last_name: 'Hawkins'},
  {first_name: 'Zach', last_name: 'Mapes'},
  {first_name: 'Tyler', last_name: 'Brewer'},
  {first_name: 'Josh', last_name: 'Pollock'}
]

student_names.each do |s|
  Student.create(s)
end
