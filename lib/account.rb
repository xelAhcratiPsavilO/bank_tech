class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def make_deposit(amount)
    @balance += amount
    @history << [Time.now.strftime('%x') + ' || '  + amount.to_s + ' ||' + nil.to_s + ' || ' + @balance.to_s]
  end

  def make_withdrawl(amount)
    @balance -= amount
    @history << [Time.now.strftime('%x') + ' ||'  + nil.to_s + ' || ' + amount.to_s + ' || ' + @balance.to_s]
  end

  def print_statement
    header
    body
  end

  private

  def header
    puts 'date || credit || debit || balance'
  end

  def body
    @history.reverse.each { |transaction| puts transaction }
  end

end
