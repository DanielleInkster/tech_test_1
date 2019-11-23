require 'transactions_record'

describe TransactionsRecord do
  subject(:record) { described_class.new }
 

  it 'initializes with an empty array' do
    expect(record.list.length).to eq 0
  end

  it 'stores a hash of the deposit transaction' do
    record.list.push({ :date => "2019-18-11", :credit => "500.00", :debit => "", :balance => "500.00" })
    expect(record.list.length).to eq 1
    expect(record.list).to eq([{ :date => "2019-18-11", :credit => "500.00", :debit => "", :balance => "500.00" }])
  end

  it 'stores a hash of the withdrawal transaction' do
    record.list.push({ :date => "2019-18-11", :credit => "", :debit => "250.00", :balance => "250.00" })
    expect(record.list.length).to eq 1
    expect(record.list).to eq([{ :date => "2019-18-11", :credit => "", :debit => "250.00", :balance => "250.00" }])
  end
end
