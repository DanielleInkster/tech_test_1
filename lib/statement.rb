require_relative 'account'

class Statement
  attr_accessor :account

  def initialize(account = Account.new)
    @account = account
  end

  def print
    arr = account.transactions.reverse
    arr.unshift({
      date: "date",
      credit: "credit",
      debit: "debit",
      balance: "balance"
    })
    # rubocop:disable LineLength - linelength 94 chars
    puts arr.collect { |p| "#{p[:date]} || #{p[:credit]} || #{p[:debit]} || #{p[:balance]}" } 
    # rubocop:enable LineLength
  end

end
