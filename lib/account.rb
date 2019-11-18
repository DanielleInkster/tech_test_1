# frozen_string_literal: true

# frozen_string_literal: true.
# Account
class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  private

  def add(num)
    @balance += num
  end

  def subtract(num)
    @balance -= num
  end
end
