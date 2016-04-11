# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Item.destroy_all

users = User.create([
  {name: 'HulaMommy', email: 'hawa11mom@gmail.com', password: 'pw123', password_confirmation: 'pw123'},
  {name: 'Tango Papa', email: 'tacticalparenting@gmail.com', password: 'pw123', password_confirmation: 'pw123'},
  {name: 'JillJill24', email: 'jillsandersfamily@yahoo.com', password: 'pw123', password_confirmation: 'pw123'}
])


items = Item.create([
  {description: 'Mumu for a 3 year old', size: '3T', gender: 'F', user_id: User.first.id},
  {description: "Boy's Nascar shirt", size: '6-8', gender: 'M', user_id: User.first.id+1},
  {description: 'Overalls', size: '4-6', gender: 'U', user_id: User.last.id}
])