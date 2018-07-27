require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup()
    song1 = Song.new("Skeptic", "Slipknot")
    song2 = Song.new("In Too Deep", "Sum 41")
    song3 = Song.new("Rock Show", "Halestorm")
    @room = Room.new(1, [song1, song2, song3])
  end

  def test_room_has_number()
    assert_equal(1, @room.room_number())
  end

  def test_number_of_songs()
    assert_equal(3, @room.song_number())
  end

end
