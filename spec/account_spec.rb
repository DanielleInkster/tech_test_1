# frozen_string_literal: true

# frozen_string_literal: true.

require 'account'

describe Account do
  it 'initializes with an empty balance' do
    expect(subject.balance).to eq 0
  end

  it 'initializes with an empty array of transactions' do
    expect(subject.transactions.length).to eq 0
  end

  describe '#deposit' do
    it 'creates a hash of the deposit transaction' do
      account = Account.new
      account.deposit(500)
      expect(account.transactions).to include(date: Time.now.strftime('%Y-%d-%m'), credit: 500, debit: 0, balance: 500)
    end
  end

  describe '#withdrawal' do
    it 'creates a hash of the withdrawal transaction' do
      account = Account.new
      account.deposit(500)
      account.withdrawal(250)
      expect(account.transactions).to include(date: Time.now.strftime('%Y-%d-%m'), credit: 0, debit: 250, balance: 250)
    end
  end
  # moved to private methods
  # describe '#add' do
  #   it 'allows a user to deposit money into their account' do
  #     account = Account.new
  #     account.add(500)
  #     expect(account.balance).to eq 500
  #   end
  # end

  # describe '#subtract' do
  #   it 'allows a user to withdraw money from their account' do
  #     account = Account.new
  #     account.add(500)
  #     account.subtract(250)
  #     expect(account.balance).to eq 250
  #   end
  # end
end
