require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guests.rb')

class RoomTest < MiniTest::Test

  def setup()
    song1 = Song.new("Skeptic", "Slipknot")
    song2 = Song.new("In Too Deep", "Sum 41")
    song3 = Song.new("Rock Show", "Halestorm")

    @room = Room.new(1, [song1, song2, song3])

    @guest1 = Guest.new("Anne")
    @guest2 = Guest.new("Richard")
    @guest3 = Guest.new("Sam")

    @guests = [@guest1, @guest2, @guest3]

  end

  def test_room_has_number()
    assert_equal(1, @room.room_number())
  end

  def test_number_of_songs()
    assert_equal(3, @room.song_number())
  end

  def test_guests_are_0()
    assert_equal(0, @room.guest_count())
  end

  def test_check_in_guest()
    @room.check_in_guests(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_check_in_guests()
    @room.check_in_guests(@guests)
    assert_equal(3, @room.guest_count())
  end

  def test_check_out_guests()
    @room.check_in_guests(@guests)
    @room.check_out_guests(@guest1)
    assert_equal(2, @room.guest_count())
  end

end
