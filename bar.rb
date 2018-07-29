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

  def drinks()
    return @drinks.size()
  end

  def take_fee(room)
    @till += room.entrance_fee()
  end


end
