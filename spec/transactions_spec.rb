require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  it 'initializes with an empty array' do
    expect(transactions.list.length).to eq 0
  end
end