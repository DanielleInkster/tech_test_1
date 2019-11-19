require 'statement'

describe Statement_Viewer do
  subject(:statement) { described_class.new }
  let(:transaction1) { double('transaction', list: [{ date: "2019-18-11", credit: "500.00", debit: "", balance: "500.00" }]) }
  let(:account) { double('account', transactions: transaction1) }

  it 'initializes with an account' do
    expect(statement.account.nil?).to eq false
  end

  describe '#print' do
   
    it 'prints transactions' do
      statement2 = Statement_Viewer.new(account)
      expect do
        statement2.print
      end.to output("date || credit || debit || balance\n2019-18-11 || 500.00 ||  || 500.00\n").to_stdout
    end
  end
end
