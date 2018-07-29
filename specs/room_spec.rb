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

    @room = Room.new(1, [song1, song2, song3], 3, 10)

    @guest1 = Guest.new("Anne", 50)
    @guest2 = Guest.new("Richard", 10)
    guest3 = Guest.new("Sam", 60)
    @guest4 = Guest.new("Anna", 100)



    @guests = [@guest1, @guest2, guest3]


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

  def test_check_out_guest()
    @room.check_in_guests(@guests)
    @room.check_out_guests(@guest1)
    assert_equal(2, @room.guest_count())
  end

  def test_check_out_guests()
    @room.check_in_guests(@guests)
    @room.check_out_guests([@guest1, @guest2])
    assert_equal(1, @room.guest_count())
  end

  def test_add_song()
    song4 = Song.new("30/30 - 150", "Stone Sour")
    @room.add_song(song4)
    assert_equal(4, @room.song_number())
  end

  def test_check_in_guests__within_capacity()
    @room.check_in_guests([@guest1, @guest2])
    result = @room.within_capacity()
    assert_equal(true, result)
  end

  # def test_check_in_guests__max_capacity()
  #   @room.check_in_guests(@guests)
  #   @room.check_in_guests(@guest4)
  #   result = @room.within_capacity()
  #   assert_equal(false, result)
  # end

  def test_integration_of_capacity_and_check_in_one_over()
    @room.check_in_guests(@guests)
    result = @room.check_in_guests(@guest4)
    assert_equal(3, @room.guest_count)
    assert_equal("Sorry Anna, the capacity for this room has been reached", result)
  end

  def test_integration_of_capacity_and_check_in_multiple_over()
    guest_extra = Guest.new("Beckett", 1000)
    @room.check_in_guests(@guests)
    result = @room.check_in_guests([@guest4, guest_extra])
    assert_equal(3, @room.guest_count)
    assert_equal("Sorry Beckett, Anna, the capacity for this room has been reached", result)
  end

  def test_room_has_entrance_fee()
    assert_equal(10, @room.entrance_fee())
  end

end
