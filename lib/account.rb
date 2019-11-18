# frozen_string_literal: true

# frozen_string_literal: true.
require 'date'
# Account
class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    add(num)
    create_deposit_transaction(num)
  end

  def withdrawal(num)
    subtract(num)
    create_withdrawal_transaction(num)
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
      credit: num,
      debit: 0,
      balance: @balance
    }
    transactions.push(transaction)
  end

  def create_withdrawal_transaction(num)
    transaction = {
      date: Time.now.strftime('%Y-%d-%m'),
      credit: 0,
      debit: num,
      balance: @balance
    }
    transactions.push(transaction)
  end
end