class Room

  attr_reader :room_number

  def initialize(room_number, songs)
    @room_number = room_number
    @songs = songs
    @guests = []
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
  end

  def check_out_guests(guests)
    if guests.class != Array
      @guests.delete(guests)
    else
      guests.each { |guest| @guests.delete(guest)}
    end
  end


end
