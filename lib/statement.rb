class Statement

  def display(history)
    header
    body(history)
  end

  private

  def header
    puts 'date || credit || debit || balance'
  end

  def body(history)
    history.reverse.each { |transaction| puts transaction }
  end

end
