# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Item.destroy_all
User.destroy_all

users = User.create([
  {name: 'HulaMommy', email: 'hawa11mom@gmail.com', password: 'pw123', password_confirmation: 'pw123'},
  {name: 'Tango Papa', email: 'tacticalparenting@gmail.com', password: 'pw123', password_confirmation: 'pw123'},
  {name: 'JillJill24', email: 'jillsandersfamily@yahoo.com', password: 'pw123', password_confirmation: 'pw123'}
])


items = Item.create([
  {description: 'Mumu for a 3 year old', size: '3T', gender: 'F', user: User.first},
  {description: "Boy's Nascar shirt", size: '6-8', gender: 'M', user: User.all.sample},
  {description: 'Overalls', size: '4-6', gender: 'U', user: User.all.sample}
])
