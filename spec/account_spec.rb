
require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'initializes with an empty balance' do
    expect(account.balance).to eq 0
  end

  it 'initializes with an empty array of transactions' do
    expect(account.transactions.length).to eq 0
  end

  describe '#deposit' do
    it 'adds money to the balance' do
      account.deposit(500)
      expect(account.balance).to eq 500
    end

    it 'will not let a user deposit a negative amount' do
      message = 'Please enter a valid amount'
      expect { account.deposit(-10) }.to raise_error message
    end

    it 'creates a hash of the deposit transaction' do
      account.deposit(500)
      expect(account.transactions).to include(date: Time.now.strftime('%Y-%d-%m'), credit: "500.00", debit: "", balance: "500.00")
    end
  end

  describe '#withdrawal' do
    before(:each) do
      account.balance = 500
    end

    it 'takes money from the balance' do
      account.withdrawal(250)
      expect(account.balance).to eq 250
    end

    it 'will not let a user withdraw a negative amount' do
      message = 'Please enter a valid amount'
      expect { account.withdrawal(-10) }.to raise_error message
    end

    it 'will not let a user withdraw more than the balance' do
      message = 'Withdrawal request exceeds balance'
      expect { account.withdrawal(600) }.to raise_error message
    end

    it 'creates a hash of the withdrawal transaction' do
      account.withdrawal(250)
      expect(account.transactions).to include(date: Time.now.strftime('%Y-%d-%m'), credit: "", debit: "250.00", balance: "250.00")
    end
  end
end
