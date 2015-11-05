# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Category.delete_all
Project.delete_all

user = User.create([{ name: 'Alexander' }, { name: 'Kumar' },{ name: 'Navin' },{ name: 'Marshallow' }])
category = Category.create([{ name: 'Banking' }, { name: 'Ecommerce' }, { name: 'Social' }])
project = Project.create([{ title: 'shopify',user_id: 1, category_id: 2 }, { title: 'facebook',user_id: 2, category_id: 3 }, { title: 'spree',user_id: 1, category_id: 2 }, { title: 'twitter',user_id: 2, category_id: 3}, { title: 'ICICI',user_id: 3, category_id: 1 }, { title: 'linkedin',user_id: 2, category_id: 3 }, { title: 'redit',user_id: 4, category_id: 2 }, { title: 'flipkart',user_id: 2, category_id: 2 }])