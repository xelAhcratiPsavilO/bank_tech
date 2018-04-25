require './lib/account.rb'

a = Account.new
a.make_deposit(1000.00)
a.make_deposit(2000.00)
a.make_withdrawl(500.00)
a.print_statement
