class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_fee(room)
    @wallet -= room.entrance_fee()
  end

end
