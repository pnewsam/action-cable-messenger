# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(name: 'Bob')
jan = User.create(name: 'Jan')

chatroom = Chatroom.create(name: 'Bob and Jan')

chatroom.messages.create(text: "Hey Jan, how's it going?", user_id: bob.id)
chatroom.messages.create(text: "Not bad, how're you Bob?", user_id: jan.id)