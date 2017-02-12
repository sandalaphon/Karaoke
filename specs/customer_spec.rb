require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../bar.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../tab.rb')
require_relative('../drinks.rb')

require('minitest/rg')


class Test_Customer < MiniTest::Test

  def setup
   @customer1= Customer.new("Edward", "Purple Rain", 100, Tab.new(self))
   @customer2= Customer.new("James", "Blowin in the Wind", 200,Tab.new(self))
   @customer3= Customer.new("Bob", "Like a Virgin", 300,Tab.new(self))
   @drink1 = Drink.new("beer",3)
   @drink2 = Drink.new("vodka", 4)
   @drink3 = Drink.new("wine",5)
   @drink4 = Drink.new("cider",3.5)
   @drinks_array=[@drink1,@drink2,@drink3,@drink4]
   # @tab1= Tab.new(@customer1)

 end

 def test_fav_song
  expected="Purple Rain"
  actual=@customer1.fav_song
  assert_equal(expected,actual)
end

def test_order_drink
  @customer1.order_drink(@drink1)
 expected=3
 actual=@customer1.tab.customer_tab_total
 assert_equal(expected,actual)
 end 

end