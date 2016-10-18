# Understands to keep track of bank transactions with its details

class BankTransaction

attr_reader :transaction, :bank_transactions

  def initialize
    @bank_transactions = []
    @transaction = {date: nil, credit: nil, debit: nil, balance: nil}
  end

  def deposit_amount(amount, balance)
    @transaction[:debit] = amount
    @transaction[:balance] = balance
    @bank_transactions << @transaction
  end

  def withdrawal_amount(amount, balance)
    @transaction[:credit] = amount
    @transaction[:balance] = balance
    @bank_transactions << @transaction
  end

end
