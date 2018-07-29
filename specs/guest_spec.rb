require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')

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


end
