require 'statement'

describe Statement do
  account = Account.new
  account.deposit(500)
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
