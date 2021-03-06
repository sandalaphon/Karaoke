require('minitest/autorun')
require_relative('../room.rb')
require_relative('../bar.rb')
require_relative('../customer.rb')
require_relative('../song.rb')
require_relative('../tab.rb')
require_relative('../drinks.rb')

require('minitest/rg')


class Test_Room < MiniTest::Test

  def setup
  @song1 = Song.new("Moonriver","Audrey Hepburn", 1977)
  @song2 = Song.new("My Way", "Frank Sinatra", 1974)
  @song3 = Song.new("Summer of 69", "Brian Adams", 1984)
  @song4 = Song.new("Purple Rain", "Prince", 1981)
  @song5 = Song.new("Like a Prayer", "Madonna", 1988)
  @song6 = Song.new("Let's get it on", "Marvin Gaye", 1972)
  @song_array=[@song1,@song2,@song3,@song4,@song5,@song6]
  @customer1= Customer.new("Edward", "Purple Rain", 100, Tab.new(self))
  @customer2= Customer.new("James", "Blowin in the Wind", 200, Tab.new(self))
  @customer3= Customer.new("Bob", "Like a Virgin", 300, Tab.new(self))
  @guest_array=[@customer1,@customer2,@customer3]
  @room1=Room.new("Classic Clubhouse", @song_array, 12)
  @customer4=Customer.new("Charlie", "Moonriver", 500, Tab.new(self))
 end

 def test_room_has_guest
  @room1.accept_new_guest(@customer1)
  @room1.accept_new_guest(@customer2)
  @room1.accept_new_guest(@customer3)
  expected=3
  actual=@room1.guests.length
  assert_equal(expected,actual)
end

def test_accept_new_guest
  @room1.accept_new_guest(@customer1)
    @room1.accept_new_guest(@customer2)
    @room1.accept_new_guest(@customer3)
  expected=3
  actual=@room1.guests.length
  assert_equal(expected,actual)
  end

end