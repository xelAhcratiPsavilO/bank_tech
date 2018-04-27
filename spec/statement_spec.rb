require 'statement'
require 'debit'
require 'credit'

describe Statement do
  let(:statement) { subject }
  let(:credit) { double :credit }
  let(:debit) { double :debit }

  describe '#display' do
    it 'displays the history of a credit' do
      history = [Credit.new('13/01/2012', '2000.0', '3000.0')]
      expected = "date || credit || debit || balance
13/01/2012 || 2000.0 || || 3000.0\n"
      expect { statement.display(history) }.to output(expected).to_stdout
    end
    it 'displays the history of a debit' do
      allow(debit).to receive(:date).and_return('14/01/2012')
      allow(debit).to receive(:amount).and_return('500.0')
      allow(debit).to receive(:balance).and_return('2500.0')
      history = [debit]
      expected = "date || credit || debit || balance
14/01/2012 || || 500.0 || 2500.0\n"
      expect { statement.display(history) }.to output(expected).to_stdout
    end
  end
end
