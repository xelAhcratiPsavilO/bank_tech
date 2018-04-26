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
    history.reverse.each do |transaction|
      if transaction.is_a?(Credit)
        body_for_credit(transaction)
      else
        body_for_debit(transaction)
      end
    end
  end

  def body_for_credit(credit)
    puts credit.date + ' || ' + credit.amount + ' || || ' + credit.balance
  end

  def body_for_debit(debit)
    puts debit.date + ' || || ' + debit.amount + ' || ' + debit.balance
  end

end
