class Oystercard

  attr_reader :balance

  LIMIT = 150

  def initialize
    @balance = 0
  end

  def top_up amount
    fail "limit #{LIMIT} reached" if @balance + amount > LIMIT
    @balance += amount
  end

  def deduct amount
    @balance -= amount
  end

end
