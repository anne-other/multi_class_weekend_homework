require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Skeptic", "Slipknot")
  end

  def test_song_has_name()
    assert_equal("Skeptic", @song.title())
  end

  def test_song_has_artist()
    assert_equal("Slipknot", @song.artist())
  end

end
