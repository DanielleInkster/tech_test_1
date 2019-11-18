require 'date'
require_relative 'transactions'

class Account
  attr_accessor :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = Transactions.new
  end

  def deposit(num)
    valid_amount?(num)
    add(num)
    create_deposit_transaction(num)
    "Deposit of #{'%.2f' % num} complete"
  end

  def withdrawal(num)
    fail 'Withdrawal request exceeds balance' if @balance < num

    valid_amount?(num)
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

  def valid_amount?(num)
    fail 'Please enter a valid amount' if num < 0 
  end

  def create_deposit_transaction(num)
    transaction = {
      date: Time.now.strftime('%Y-%d-%m'),
      credit: '%.2f' % num,
      debit: "",
      balance: '%.2f' % @balance
    }
    @transactions.list.push(transaction)
  end

  def create_withdrawal_transaction(num)
    transaction = {
      :date => Time.now.strftime('%Y-%d-%m'),
      :credit => "",
      :debit => '%.2f' % num,
      :balance => '%.2f' % @balance
    }
    @transactions.list.push(transaction)
  end
end
