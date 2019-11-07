

class OysterCard
  attr_reader :balance
  attr_accessor :card_state
  LIMIT = 90

  def initialize(balance, card_state = false)
    @balance = balance
    @card_state = card_state
  end

  def top_up(amount)
   fail "Maximum balance  of #{LIMIT} exceeded" if @balance + amount > LIMIT
   @balance = balance + amount
  end

  def deduct(amt)
    @balance = balance - amt
  end

  def in_journey?


  end

  def touch_in
    @card_state = true
  end

  def touch_out
    @card_state = false
  end
end
