require 'transaction'
require 'statement'

class Atm

  def menu
    puts 'Welcome to AlexBank!'
    puts 'What operation would you like to access?'
    puts 'Credit || Debit || Statement'
  end

  def confirm
    @op = operation
    if (@op == 'Credit') or (@op == 'Debit') or (@op == 'Statement')
      p "#{@op} selected"
    else
      fail 'Option selected not available'
    end
  end

  private

  def operation
    gets.chomp
  end

end
