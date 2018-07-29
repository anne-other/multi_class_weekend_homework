require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Anne", 50)
  end

  def test_guest_has_name()
    assert_equal("Anne", @guest.name())
  end

  def test_guest_has_money()
    assert_equal(50, @guest.wallet())
  end

  def test_guest_pay_fee()
    room = Room.new(1, [], 3, 10)
    @guest.pay_fee(room)
    assert_equal(40, @guest.wallet)
  end


end
