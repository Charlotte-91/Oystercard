class Oystercard

  attr_reader :balance, :entry_station

  def initialize
    @balance = 0
    
  end

    MAX_BALANCE = 90
    MINIMUM_AMOUNT = 1

  def top_up(amount)
    fail "exceeded #{MAX_BALANCE} the maximum balance" if @balance + amount > MAX_BALANCE
    @balance += amount
    amount
  end

  def in_journey?
    @entry_station != nil
  end

  def touch_in(station)
    fail "not enough funds." if @balance < MINIMUM_AMOUNT
    @entry_station = station
   
  end

  def touch_out
    
    @entry_station = nil
    deduct(MINIMUM_AMOUNT)
  end

private
def deduct(amount)
  @balance -= amount
  @balance
  end
end
