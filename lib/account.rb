require 'date'
require_relative 'transactions'
require_relative 'transactions_record'

class Account
  attr_accessor :balance, :transactions

  def initialize(balance = 0, transactions = Transactions.new)
    @balance = balance
    @transactions = transactions
  end

  def deposit(num)
    valid_amount?(num)
    add(num)
    @transactions.create_deposit_transaction(num)
    @transactions.record.list[-1][:balance] = ('%.2f' % @balance)
    "Deposit of #{'%.2f' % num} complete"
  end

  def withdrawal(num)
    fail 'Withdrawal request exceeds balance' if @balance < num

    valid_amount?(num)
    subtract(num)
    @transactions.create_withdrawal_transaction(num)
    @transactions.record.list[-1][:balance] = ('%.2f' % @balance)
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
end
