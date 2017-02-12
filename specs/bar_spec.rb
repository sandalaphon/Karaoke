require('minitest/autorun')
require_relative('../bar.rb')
require_relative('../customer.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../tab.rb')
require_relative('../drinks.rb')
require('minitest/rg')


class Test_Bar < MiniTest::Test

  def setup
   @drink1 = Drink.new("beer",3)
   @drink2 = Drink.new("vodka", 4)
   @drink3 = Drink.new("wine",5)
   @drink4 = Drink.new("cider",3.5)
   @drinks_array=[@drink1,@drink2,@drink3,@drink4]
  @song1 = Song.new("Moonriver","Audrey Hepburn", 1977)
    @song2 = Song.new("My Way", "Frank Sinatra", 1974)
    @song3 = Song.new("Summer of 69", "Brian Adams", 1984)
    @song4 = Song.new("Purple Rain", "Prince", 1981)
    @song5 = Song.new("Like a Prayer", "Madonna", 1988)
    @song6 = Song.new("Let's get it on", "Marvin Gaye", 1972)
    @song_array=[@song1,@song2,@song3,@song4,@song5,@song6]
    @customer1= Customer.new("Edward", "Purple Rain", 100)
    @customer2= Customer.new("James", "Blowin in the Wind", 200)
    @customer3= Customer.new("Bob", "Like a Virgin", 300)
    @guest_array=[@customer1,@customer2,@customer3]
    @room1=Room.new("Classic Clubhouse", @song_array, @guest_array, 12)
    @customer4=Customer.new("Charlie", "Moonriver", 500)
 end

 def test_check_in_guest
  expected=
  actual=
  assert_equal(expected,actual)
end

end