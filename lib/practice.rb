require_relative 'statement_viewer'

account = Account.new

p account.deposit(500)
p account.withdrawal(300)

statement = StatementViewer.new(account)

p statement.print
