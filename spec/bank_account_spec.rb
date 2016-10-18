require 'bank_account'

describe BankAccount do
  it 'knows the initial balance of bank account' do
    expect(subject.balance).to eq(0)
  end
end
