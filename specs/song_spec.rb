require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Skeptic", "Slipknot", "Only when the fates, Commiserate ...")
  end

  def test_song_has_name()
    assert_equal("Skeptic", @song.title())
  end

  def test_song_has_artist()
    assert_equal("Slipknot", @song.artist())
  end

  def test_song_has_tune()
    assert_equal("Only when the fates, Commiserate ...", @song.tune())
  end

end
