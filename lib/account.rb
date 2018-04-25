class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def make_deposit(deposit_instance, amount)
    @balance += amount
    @history << deposit_instance
  end

end
