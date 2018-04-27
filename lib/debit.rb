# The class debit is oriented to give the structure for a debit transaction
class Debit
  attr_reader :date, :amount, :balance

  def initialize(date, amount, balance)
    @date = date
    @amount = amount
    @balance = balance
  end
end
