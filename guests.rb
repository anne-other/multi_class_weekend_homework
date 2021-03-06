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

  def have_fav_song(room)
    if room.find_song(fav_song()).class == Song
      return "Whoo!"
    else
      return "Boo!"
    end
  end

  def buy_drink(drink)
    @wallet -= drink.price()
  end

end
