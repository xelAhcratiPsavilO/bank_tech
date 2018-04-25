require 'atm'

describe Atm do

  let(:atm) { subject }

  describe '#menu' do
    let(:expected) { ['Welcome to AlexBank!',
                      'What operation would you like to access?',
                      'Credit || Debit || Statement'].join("\n") }
    it 'allows you to choose operations' do
      expect { atm.menu } .to output(/#{expected}/).to_stdout
    end
  end

end
