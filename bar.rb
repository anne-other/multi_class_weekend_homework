class Bar

  attr_reader :till

  def initialize(till, rooms, drinks)
    @till = till
    @rooms = rooms
    @drinks = drinks
  end

  def rooms()
    return @rooms.size()
  end


end
