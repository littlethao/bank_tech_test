require 'bank_transaction'

describe BankTransaction do
  let(:amount) { double :amount }
  let(:balance) { double :balance }
  subject(:bankTransaction) { described_class.new }

  context '#deposit_amount(amount, balance)' do
    it 'knows the deposit amount with an updated balance of a transaction' do
      bankTransaction.deposit_amount(amount, balance)
      expect(bankTransaction.instance_variable_get(:@bank_transactions)).to eq([{:date=>nil, :credit=>amount, :debit=>nil, :balance=>balance}])
    end
  end

  context '#withdrawal_amount(amount, balance)' do
    it 'knows the withdrawal amount with an updated balance of a transaction' do
      bankTransaction.withdrawal_amount(amount, balance)
      expect(bankTransaction.instance_variable_get(:@bank_transactions)).to eq([{:date=>nil, :credit=>nil, :debit=>amount, :balance=>balance}])
    end
  end
end
