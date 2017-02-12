require('minitest/autorun')
require_relative('../customer.rb')

require('minitest/rg')


class Test_Customer < MiniTest::Test

  def setup
   @customer1= Customer.new("Edward", "Purple Rain", 100)
   @customer2= Customer.new("James", "Blowin in the Wind", 200)
   @customer3= Customer.new("Bob", "Like a Virgin", 300)

 end

 def test_fav_song
  expected="Purple Rain"
  actual=@customer1.fav_song
  assert_equal(expected,actual)
end

def test_order_drink
 expected=
 actual=
 assert_equal(expected,actual)
 end 

end