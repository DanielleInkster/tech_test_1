require 'transactions'

describe Transactions do
  subject(:transaction) { described_class.new }

  it 'initializes with a TransactionRecord' do
    expect(transaction.record.nil?).to eq false
  end

  describe '#create_deposit_transaction' do
    it 'responds to create_deposit_transaction' do
      expect(transaction).to respond_to(:create_deposit_transaction).with(1).argument
    end

    it 'creates a hash of a deposit transaction' do
      transaction.create_deposit_transaction(500)
      expect(transaction.record.list[0]).to include(:credit => "500.00")
    end
  end

    describe '#create_deposit_transaction' do
    it 'responds to create_withdrawal_transaction' do
      expect(transaction).to respond_to(:create_withdrawal_transaction).with(1).argument
    end

    it 'creates a hash of a withdrawal transaction' do
      transaction.create_withdrawal_transaction(500)
      expect(transaction.record.list[0]).to include(:debit => "500.00")
    end
  end
end
