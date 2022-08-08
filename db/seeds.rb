# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Weektime.destroy_all


User.create(email: "teste@tt.com", password: "123456", role: 2)
p "Created #{User.count} User testeur create"

3.times do
    User.create(
       email: Faker::Internet.email,
       password: "123456",
       role:0
    )
    p "Created #{User.count} User"    
end

#3.times do
#    User.first.weektimes.create( user_id: User.first)
#    
#end
#
#6.times do
#    3.times do
#               User.find(2).weektimes.create( user_id: 2 )
#      
#    end 
#
#    3.times do
#    User.find(2).weektimes.create( user_id: 2 )
#   
#    end
#    3.times do
#    User.find(2).weektimes.create( user_id: 2 )
# 
#    end
#end