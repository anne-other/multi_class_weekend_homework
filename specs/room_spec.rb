require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')

class RoomTest < MiniTest::Test

  def setup()
    song1 = Song.new("Skeptic", "Slipknot")
    song2 = Song.new("In Too Deep", "Sum 41")
    song3 = Song.new("Rock Show", "Halestorm")
    @room = Room.new(1, [song1, song2, song3])
  end

end
