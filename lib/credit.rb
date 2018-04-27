# The class credit is oriented to give the structure for a credit transaction
class Credit
  attr_reader :date, :amount, :balance

  def initialize(date, amount, balance)
    @date = date
    @amount = amount
    @balance = balance
  end
end
