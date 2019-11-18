require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }
  let(:transaction1)       { double('transaction', list: [{ date: "2019-18-11", credit: "500.00", debit: "", balance: "500.00" }]) }
  let(:transaction2)       { double('transaction', list: [{ date: "2019-18-11", credit: "", debit: "250.00", balance: "250.00" }]) }
  let(:account)       { double('account', transactions: transaction1) }
  let(:account2)       { double('account2', transactions: transaction2) }

  it 'initializes with an empty array' do
    expect(transactions.list.length).to eq 0
  end

  it 'stores a hash of the deposit transaction' do
    expect(account.transactions.list).to eq([{:date=>"2019-18-11", :credit=>"500.00", :debit=>"", :balance=>"500.00"}])
  end

  it 'stores a hash of the withdrawal transaction' do
    expect(account2.transactions.list).to eq([{:date=>"2019-18-11", :credit=>"", :debit=>"250.00", :balance=>"250.00"}])
  end
end