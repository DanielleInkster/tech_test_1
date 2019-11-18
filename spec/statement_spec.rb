require 'statement'

describe Statement do
  let(:account)       { double('account', transactions: [{ date: Time.now.strftime('%Y-%d-%m'), credit: "500.00", debit: "", balance: "500.00" }]) }
  subject(:statement) { described_class.new(account) }

  it 'initializes with an account' do
    expect(statement.account.nil?).to eq false
  end

  describe '#print' do
   
    it 'prints transactions' do
      expect do
        statement.print
      end.to output("date || credit || debit || balance\n2019-18-11 || 500.00 ||  || 500.00\n").to_stdout
    end
  end
end
