require 'statement_viewer'

describe StatementViewer do
  subject(:statement) { described_class.new }
  account = Account.new
  account.transactions.record.list.push({
        :date => "2019-18-11", 
        :credit => "500.00", 
        :debit => "", 
        :balance => "500.00" 
        })
   

  it 'initializes with an account' do
    expect(statement.account.nil?).to eq false
  end

  describe '#print' do
   
    it 'prints transactions' do
      statement = StatementViewer.new(account)
      expect do
        statement.print
      end.to output("date || credit || debit || balance\n2019-18-11 || 500.00 ||  || 500.00\n").to_stdout
    end
  end
end
