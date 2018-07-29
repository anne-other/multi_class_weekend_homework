class Guest

  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_fee(room)
    @wallet -= room.entrance_fee()
  end

end
