require 'account'

describe Account do

  let(:account) { subject }

  describe '#balance' do
    it 'is zero by default' do
      expect(account.balance).to eq 0
    end
  end

  describe '#history' do
    it 'shows the transactions history' do
      expect(account.history).to eq []
    end
  end

end
