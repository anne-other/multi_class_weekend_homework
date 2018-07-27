class Room

  attr_reader :room_number

  def initialize(room_number, songs)
    @room_number = room_number
    @songs = songs
    @guests = []
  end


end
