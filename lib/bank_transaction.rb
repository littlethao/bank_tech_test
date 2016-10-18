# Understands to keep track of bank transactions with its details

class BankTransaction

attr_reader :transaction, :bank_transactions

  def initialize
    @bank_transactions = []
    @single_transaction = {date: nil, credit: nil, debit: nil, balance: nil}
  end

  def deposit_amount(amount, balance)
    @single_transaction[:credit] = amount
    @single_transaction[:balance] = balance
    @bank_transactions << @single_transaction
  end

  def withdrawal_amount(amount, balance)
    @single_transaction[:debit] = amount
    @single_transaction[:balance] = balance
    @bank_transactions << @single_transaction
  end

  def transactions
    @bank_transactions.dup
  end
end
