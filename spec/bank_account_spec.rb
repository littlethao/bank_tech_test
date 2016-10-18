require 'bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new }

  context '#initialize' do
    it 'knows the initial balance of bank account is 0' do
      expect(bank_account.instance_variable_get(:@balance)).to eq BankAccount::INITIAL_BALANCE
    end
  end

  context '#deposit' do
    it 'knows a deposit' do
      expect(bank_account).to respond_to(:deposit).with(1).argument
    end

    it 'knows to adds up balance when money is deposited to bank account' do
      expect{ bank_account.deposit(1000) }.to change{ bank_account.instance_variable_get(:@balance) }.by 1000
    end
  end
end
