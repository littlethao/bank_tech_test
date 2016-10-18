# Understands to keep track of the balance state

class BankAccount

INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

private

attr_reader :balance

end
