require './lib/account.rb'
require './lib/statement.rb'
require 'time'

a = Account.new
s = Statement.new
a.deposit('10/01/2012', 1000.00)
a.deposit('13/01/2012', 2000.00)
a.withdrawal('14/01/2012', 500.00)
s.display(a.history)
