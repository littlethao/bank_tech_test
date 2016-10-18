require 'bank_transaction'

describe BankTransaction do
  it 'knows the date of a transaction' do
    expect(subject.date).to eq("18/10/2016")
  end

  it 'knows the amount of a transaction' do
    expect(subject.amount).to eq(1000)
  end

  it 'knows the balance of a transaction' do
    expect(subject.balance).to eq(2000)
  end
end
