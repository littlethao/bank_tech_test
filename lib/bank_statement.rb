# Understands the printing of transactions
require_relative 'bank_transaction'

class BankStatement

  attr_reader :statement

  def initialize
    @statement = BankTransaction.new
  end

  def printStatement
    @statement.transactions
  end
end
