# understands balance

class Account

  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail 'Insufficient funds' if balance < amount
    @balance -= amount
  end

end
