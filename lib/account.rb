# frozen_string_literal: true

# frozen_string_literal: true.
# Account
class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(num)
    @balance += num
  end

  def withdraw(num)
    @balance -= num
  end
end
