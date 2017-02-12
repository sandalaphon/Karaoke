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
    @customer1= Customer.new("Edward", "Purple Rain", 100,Tab.new(self))
    @customer2= Customer.new("James", "Blowin in the Wind", 200,Tab.new(self))
    @customer3= Customer.new("Bob", "Like a Virgin", 300,Tab.new(self))
    @room1=Room.new("Classic Clubhouse", @song_array, 12)
    @customer4=Customer.new("Charlie", "Moonriver", 500,Tab.new(self))
    @rooms_array=[@room1]
    @bar1=Bar.new(@drinks_array, @rooms_array, 1000)
    @song7 = Song.new("I Wanna Dance With Somebody", "Whitney Houston", 1987 )
 end

 def test_check_in_guest
  @bar1.check_in_guest(@customer4, @room1)
  expected=1
  actual=@room1.guests.length
  assert_equal(expected,actual)
end

# def test_find_customer_room
#   @bar1.check_in_guest(@customer4, @room1)
#   expected="Classic Clubhouse"
#   actual=@bar1.find_customer_room(@customer4)
#   assert_equal(expected,actual)
#   end

  def test_remove_guest
    @bar1.check_in_guest(@customer4, @room1)
    @bar1.check_in_guest(@customer3, @room1)
    @bar1.check_out_guest(@customer3)
    expected=1
    actual=@room1.guests.length
    assert_equal(expected,actual)
  end

  def test_take_payement_cust_cash
    @customer1.order_drink(@drink1)
    @bar1.take_payment(@customer1)
    expected=97
    actual=@customer1.cash
    assert_equal(expected, actual)
  end

  def test_take_payement_bar_cash
    @customer1.order_drink(@drink1)
    @bar1.take_payment(@customer1)
    expected=1003
    actual=@bar1.cash
    assert_equal(expected, actual)
  end

  def test_accept_new_song
    @room1.accept_new_song(@song7)
    expected=7
    actual=@room1.songs.length
    puts actual
    assert_equal(expected, actual)
  end

end