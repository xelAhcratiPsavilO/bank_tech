require 'atm'

describe Atm do

  let(:atm) { subject }

  describe '#menu' do
    it 'allows you to choose operations' do
      expected = "Welcome to AlexBank!\n" +
      "What operation would you like to access?\n" +
      "Credit || Debit || Statement\n"
      expect { atm.menu } .to output(expected).to_stdout
    end
  end

  describe '#confirm' do
    let(:user_input) { 'Credit' }
    it 'shows the desired operation' do
      set_user_input
      expect { atm.confirm } .to output(/#{'Credit selected'}/).to_stdout
    end
  end

  describe '#confirm' do
    let(:user_input) { 'NotCredit' }
    it 'raises an error when the option selected is not available' do
      set_user_input
      expect { atm.confirm } .to raise_error 'Option selected not available'
    end
  end

  def set_user_input
    allow_any_instance_of(Object)
      .to receive(:gets).and_return(*user_input)
  end

end
