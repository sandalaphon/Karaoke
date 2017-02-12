require('minitest/autorun')
require_relative('../drinks.rb')

require('minitest/rg')

class Test_Drinks < MiniTest::Test

def setup
 @drink1 = Drink.new("beer",3)
 @drink2 = Drink.new("vodka", 4)
 @drink3 = Drink.new("wine",5)
 @drink4 = Drink.new("cider",3.5)
end

def test_drink_name
  expected="beer"
  actual=@drink1.name
  assert_equal(expected,actual)
end








end