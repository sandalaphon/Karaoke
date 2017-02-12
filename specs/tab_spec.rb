require('minitest/autorun')
require_relative('../tab.rb')
require_relative('../bar.rb')
require_relative('../customer.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../drinks.rb')
require('minitest/rg')


class Test_Tab < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer",3)
    @drink2 = Drink.new("vodka", 4)
    @drink3 = Drink.new("wine",5)
    @drink4 = Drink.new("cider",3.5)
    @drinks_array=[@drink1,@drink2,@drink3,@drink4]
    @customer1= Customer.new("Edward", "Purple Rain", 100,Tab.new(self))
    @customer2= Customer.new("James", "Blowin in the Wind", 200,Tab.new(self))
    @customer3= Customer.new("Bob", "Like a Virgin", 300, Tab.new(self))
    @tab1=Tab.new(@customer1)
   
 end

 def test_add_drink_to_bill
  @tab1.add_drink_to_bill(@customer1, @drink1)
  expected=3
  actual=@tab1.customer_tab_total
  assert_equal(expected,actual)
end

end