require 'statement'
require 'time'

describe Statement do

  let(:statement) { subject }
  let(:account) { double :account }

  describe '#body' do
    it 'displays the history' do
      history = [Time.parse('09/03/2018').strftime('%d/%m/%Y') + " || 5000 || || 5000\n", Time.parse('13/03/2018').strftime('%d/%m/%Y') + " || 1000 || || 6000\n"]
      expect { statement.display(history) }.to output("date || credit || debit || balance\n13/03/2018 || 1000 || || 6000\n09/03/2018 || 5000 || || 5000\n").to_stdout
    end
  end


end
