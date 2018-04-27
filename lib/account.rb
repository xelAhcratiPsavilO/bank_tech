require_relative 'debit'
# The class account is oriented to store information
class Account
  attr_reader :balance, :history, :transaction

  def initialize(debit = Debit, credit = Credit)
    @balance = 0
    @history = []
    @debit = debit
    @credit = credit
  end

  def deposit(date, amount)
    @balance += amount
    @history << @credit.new(date, amount, @balance)
  end

  def withdrawal(date, amount)
    @balance -= amount
    @history << @debit.new(date, amount, @balance)
  end
end
