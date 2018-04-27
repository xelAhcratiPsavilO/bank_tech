# The class statement is oriented to print the transactions up to this point
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

  def body_for_credit(cred)
    puts cred.date + ' || ' + cred.amount.to_s + ' || || ' + cred.balance.to_s
  end

  def body_for_debit(deb)
    puts deb.date + ' || || ' + deb.amount.to_s + ' || ' + deb.balance.to_s
  end
end
