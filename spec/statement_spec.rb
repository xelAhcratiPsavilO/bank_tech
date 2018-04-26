require 'statement'
require 'debit'
require 'credit'

describe Statement do

  let(:statement) { subject }

  describe '#display' do
    it 'displays the history of a credit' do
      history = [Credit.new('13/01/2012', '2000.0', '3000.0')]
      expected = "date || credit || debit || balance
13/01/2012 || 2000.0 || || 3000.0\n"
      expect { statement.display(history) }.to output(expected).to_stdout
    end
    it 'displays the history of a debit' do
      history = [Debit.new('14/01/2012', '500.0', '2500.0')]
      expected = "date || credit || debit || balance
14/01/2012 || || 500.0 || 2500.0\n"
      expect { statement.display(history) }.to output(expected).to_stdout
    end
  end


end
