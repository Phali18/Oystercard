class Oystercard
  LIMIT = 90
  attr_reader :balance
  
  def initialize
    @balance = 0
  end 

  def top_up(amount)
    raise "limit is #{LIMIT}" if amount + @balance > LIMIT
    @balance += amount
  end 

end 