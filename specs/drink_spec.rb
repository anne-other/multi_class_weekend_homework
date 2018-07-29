require('minitest/autorun')
require('minitest/rg')

require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Cider", 4)
  end

  def test_drink_has_name()
    assert_equal("Cider", @drink.drink_name())
  end

  def test_drink_has_price()
    assert_equal(4, @drink.price())
  end
end
