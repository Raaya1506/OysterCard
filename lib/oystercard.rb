class OysterCard

  attr_reader :balance
  def initialize(balance)
    @balance = balance
  end

 def top_up(amount)
   @balance = balance + amount
 end
end
