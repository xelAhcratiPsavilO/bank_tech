require './lib/account.rb'
require './lib/statement.rb'
require 'time'

a = Account.new
s = Statement.new
a.deposit(Time.parse('10/01/2012'), 1000.00)
a.deposit(Time.parse('13/01/2012'), 2000.00)
a.withdrawl(Time.parse('14/01/2012'), 500.00)
s.display(a.history)
