# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Create Users ..."

user1 = User.create(:name => "Jonh Smith", :email => "jonh@inotechne.com",
        :password => "test1234", :password_confirmation => "test1234")

user2 = User.create(:name => "Jonh2 Smith2", :email => "jonh2222@inotechne.com",
                    :password => "test1234", :password_confirmation => "test1234")

Relationship.create(:follower => user2, :following => user1)

