

class OysterCard
  attr_reader :balance
  LIMIT = 90
  def initialize(balance)
    @balance = balance
  end
  def top_up(amount)
 fail "Maximum balance  of #{LIMIT} exceeded" if @balance + amount > LIMIT
  @balance = balance + amount
  end
end
