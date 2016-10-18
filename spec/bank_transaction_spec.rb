require 'bank_transaction'

describe BankTransaction do
  context '#deposit_amount(amount, balance)' do
    it 'knows the deposit amount with an updated balance of a transaction' do
      subject.deposit_amount(1000, 2000)
      expect(subject.instance_variable_get(:@bank_transactions)).to eq([{:date=>nil, :credit=>nil, :debit=>1000, :balance=>2000}])
    end
  end

  context '#withdrawal_amount(amount, balance)' do
    it 'knows the withdrawal amount with an updated balance of a transaction' do
      subject.withdrawal_amount(500, 1500)
      expect(subject.instance_variable_get(:@bank_transactions)).to eq([{:date=>nil, :credit=>500, :debit=>nil, :balance=>1500}])
    end
  end
end
