#pulling it together to run from command line
require_relative('./room.rb')
require_relative('./bar.rb')
require_relative('./customer.rb')
require_relative('./song.rb')
require_relative('./tab.rb')
require_relative('./drinks.rb')
song1 = Song.new("Moonriver","Audrey Hepburn", 1977)
song2 = Song.new("My Way", "Frank Sinatra", 1974)
song3 = Song.new("Summer of 69", "Brian Adams", 1984)
song4 = Song.new("Purple Rain", "Prince", 1981)
song5 = Song.new("Like a Prayer", "Madonna", 1988)
song6 = Song.new("Let's get it on", "Marvin Gaye", 1972)
song_array=[song1,song2,song3,song4,song5,song6]

drink1 = Drink.new("beer",3)
drink2 = Drink.new("vodka", 4)
drink3 = Drink.new("wine",5)
drink4 = Drink.new("cider",3.5)

customer1= Customer.new("Edward", "Purple Rain", 100,Tab.new(self))
customer2= Customer.new("James", "Blowin in the Wind", 200,Tab.new(self))
customer3= Customer.new("Bob", "Like a Virgin", 300,Tab.new(self))
room1=Room.new("Classic Clubhouse", song_array, 12)
rooms_array=[room1]

drinks_array=[drink1,drink2,drink3,drink4]
bar1=Bar.new(drinks_array, rooms_array, 1000)

bar1.check_in_guest(customer1, room1)
bar1.check_in_guest(customer2, room1)
bar1.check_in_guest(customer3, room1)
song7 = Song.new("I Wanna Dance With Somebody", "Whitney Houston", 1987 )

#Beginning of input

continue=true

while continue==true
puts "What would you like to do?\n1 to add room\n2 to add song to a room\n3 to take a customer order\n4 to check in a customer\n5 to check out a customer\n6 to log off for the night"
option = gets.to_i
case option
when 1
  puts "Great, what is the new room called?"
when 2
  puts "Great, what is the title of the new song?"
  title_input=gets.chomp
  puts "Great, and who is the artist?"
  artist_input = gets.chomp
  puts "And what year was it released?"
  release_year_input=gets.to_i
  puts "Great, and what room will this be added to?"
  room_for_input_song= gets.chomp
  song_name_number=(room_for_input_song.songs.length+1)
  song_name_number=Song.new(title_input, artist_input, release_year_input)
  room_for_input_song.accept_new_song(song_name_number)
  puts "#{title_input} has been added to #{room_for_input_song}"

when 3
  puts "What is the customer's name?"
  input_name=gets.chomp
  customer_id=bar1.find_customer_by_name(input_name)
  room_id=bar1.find_customer_room(customer_id)
  puts "And what would #{input_name} like?\n (beer, vodka, wine or cider..."
  drink_desired=gets.chomp
  puts "Coming right up, 1 #{drink_desired} for #{input_name} in #{room_id.room_name}"
  drink_id=bar1.find_drink_by_name(drink_desired)
  customer_id.order_drink(drink_id)
  puts "#{customer_id.name} now owes £#{customer_id.tab.customer_tab_total}"
when 4
  #name, fav_song, cash, tab
  puts "Sure, what is the new customer's name?"
  cust_name_input=gets.chomp
  puts "Great, and what is #{cust_name_input}'s favourite song?"
  fav_song_input=gets.chomp
  puts "and what credit limit will you place on #{cust_name_input}?"
  cash_limit=gets.chomp.to_i
  puts "Thanks. And finally what room would #{cust_name_input} like to join?\n suggest Classic Clubhouse"
  room_input=gets.chomp
  room_to_join=bar1.find_room_by_name(room_input)
 customer_name_number=(room_to_join.guests.length+1)
 customer_name_number=Customer.new(cust_name_input, fav_song_input, cash_limit, Tab.new(self))
 bar1.check_in_guest(customer_name_number, room_to_join)

when 5
  puts "What is the name of the customer to check out?"
  cust_name=gets.chomp
  cust_name_id=bar1.find_customer_by_name(cust_name)
  puts "Great we hope #{cust_name_id.name} had a great time. They have been charged £#{cust_name_id.tab.customer_tab_total}"
  bar1.take_payment(cust_name_id)
  bar1.check_out_guest(cust_name_id)


when 6
  continue=false
end

end
