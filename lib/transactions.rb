require_relative 'transactions_record'

class Transactions

  attr_accessor :record

  def initialize(record = TransactionsRecord.new)
    @record = record
  end

  def create_deposit_transaction(num)
    transaction = {
      date: Time.now.strftime('%Y-%d-%m'),
      credit: '%.2f' % num,
      debit: ""
    }
    @record.list.push(transaction)
  end

  def create_withdrawal_transaction(num)
    transaction = {
      :date => Time.now.strftime('%Y-%d-%m'),
      :credit => "",
      :debit => '%.2f' % num,
    }
    @record.list.push(transaction)
  end

end
