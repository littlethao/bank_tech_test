# Understands to keep track of the balance state
require_relative 'bank_transaction'

class BankAccount

INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE, transaction = BankTransaction.new)
    @balance = balance
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.deposit_amount(amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transaction.withdrawal_amount(amount, balance)
  end

private

attr_reader :balance

end
