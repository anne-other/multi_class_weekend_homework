require('minitest/autorun')
require('minitest/rg')

require_relative('../bar.rb')
require_relative('../room.rb')
require_relative('../drink.rb')

class BarTest < MiniTest::Test

  def setup
    room1 = Room.new(1, [], 3, 10)
    room2 = Room.new(2, [], 5, 5)

    drink1 = Drink.new("Cider", 4)
    drink2 = Drink.new("Cocktail", 15)

    @bar = Bar.new(200, [room1, room2], [drink1, drink2])
  end

  def test_till_content()
    assert_equal(200, @bar.till())
  end

end
