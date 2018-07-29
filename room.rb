# require('pry')

class Room

  attr_reader :room_number, :entrance_fee

  def initialize(room_number, songs, max_capacity, entrance_fee)
    @room_number = room_number
    @songs = songs
    @guests = []
    @max_capacity = max_capacity
    @entrance_fee = entrance_fee
  end

  def song_number()
    return @songs.size()
  end

  def guest_count()
    return @guests.size()
  end

  def check_in_guests(guests)
    if guests.class != Array
      @guests << guests
    else
      guests.each { |guest| @guests << guest }
    end
    over_capacity()
  end

  def check_out_guests(guests)
    if guests.class != Array
      @guests.delete(guests)
    else
      guests.each { |guest| @guests.delete(guest)}
    end
  end

  def add_song(song)
    @songs << song
  end

  def within_capacity()
    return guest_count() <= @max_capacity? true : false
  end

  def over_capacity()
    too_many = []
    while within_capacity == false
      guest = @guests.pop()
      too_many << guest.name()
    end
    if too_many.size() > 0
      names = too_many.reduce { |name, other| name + ", " + other}
      return "Sorry #{names}, the capacity for this room has been reached"
    end
  end


end
