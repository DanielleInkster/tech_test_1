require_relative 'statement'

account = Account.new

p account.deposit(500)
p account.withdrawal(300)

statement = Statement.new(account)

p statement.print
