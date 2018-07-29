require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../drink.rb')

class GuestTest < MiniTest::Test

  def setup
    song1 = Song.new("Skeptic", "Slipknot", "Only when the fates, Commiserate ...")
    song2 = Song.new("In Too Deep", "Sum 41", "The faster we're falling ...")
    song3 = Song.new("Rock Show", "Halestorm", "You like it loud, Come alive in the middle of a crowd ...")

    @room = Room.new(1, [song1, song2, song3], 3, 10)

    @guest = Guest.new("Anne", 50, "In Too Deep")
  end

  def test_guest_has_name()
    assert_equal("Anne", @guest.name())
  end

  def test_guest_has_money()
    assert_equal(50, @guest.wallet())
  end

  def test_guest_pay_fee()
    @guest.pay_fee(@room)
    assert_equal(40, @guest.wallet)
  end

  def test_guest_fave_song()
    assert_equal("In Too Deep", @guest.fav_song())
  end

  def test_if_room_has_fav_song__true()
    result = @guest.have_fav_song(@room)
    assert_equal("Whoo!", result)
  end

  def test_if_room_has_fav_song__false()
    guest2 = Guest.new("Richard", 10, "Spit It Out")
    result = guest2.have_fav_song(@room)
    assert_equal("Boo!", result)
  end

  def test_buy_drink()
    drink = Drink.new("Cider", 4)
    @guest.buy_drink(drink)
    assert_equal(46, @guest.wallet())
  end


end
