require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Skeptic", "Slipknot")
  end

  def test_song_has_name
    assert_equal("Skeptic", @song.song_name)
  end

end
