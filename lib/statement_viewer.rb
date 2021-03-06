require_relative 'account'

class StatementViewer
  attr_accessor :account

  def initialize(account = Account.new)
    @account = account
  end

  def print
    arr = @account.transactions.record.list.reverse
    create_heading(arr)
    # rubocop:disable LineLength - linelength 94 chars
    puts arr.collect { |p| "#{p[:date]} || #{p[:credit]} || #{p[:debit]} || #{p[:balance]}\n" } 
    return "end statement"
    # rubocop:enable LineLength
  end

  private

  def create_heading(arr)
    arr.unshift({
      date: "date",
      credit: "credit",
      debit: "debit",
      balance: "balance"
    })
  end
end
