require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')

class GuestTest < MiniTest::Test

  def test_guest_has_name()
    guest = Guest.new("Anne")
    assert_equal("Anne", guest.name())
  end


end
