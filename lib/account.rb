require 'date'

class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    add(num)
    create_deposit_transaction(num)
    "Deposit of #{'%.2f' % num} complete"
  end

  def withdrawal(num)
    raise 'Withdrawal request exceeds balance' if @balance < num

    subtract(num)
    create_withdrawal_transaction(num)
    "Withdrawal of #{'%.2f' % num} complete"
  end

  private

  def add(num)
    @balance += num
  end

  def subtract(num)
    @balance -= num
  end

  def create_deposit_transaction(num)
    transaction = {
      date: Time.now.strftime('%Y-%d-%m'),
      credit: '%.2f' % num,
      debit: "",
      balance: '%.2f' % @balance
    }
    transactions.push(transaction)
  end

  def create_withdrawal_transaction(num)
    transaction = {
      :date => Time.now.strftime('%Y-%d-%m'),
      :credit => "",
      :debit => '%.2f' % num,
      :balance => '%.2f' % @balance
    }
    transactions.push(transaction)
  end
end
