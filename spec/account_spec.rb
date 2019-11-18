# frozen_string_literal: true

# frozen_string_literal: true.

require 'account'

describe Account do
  it 'initializes with an empty balance' do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it 'allows a user to deposit money into their account' do
      account = Account.new
      account.deposit(500)
      expect(account.balance).to eq 500
    end
  end
end
