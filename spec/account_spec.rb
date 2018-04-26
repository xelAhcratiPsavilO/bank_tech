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

  describe '#deposit' do
    it 'adds money to the balance' do
      account.deposit('02/04/2018', 50)
      expect(account.balance).to eq 50
    end

    it 'adds transaction to the history' do
      account.deposit('02/04/2018', 50)
      expect(account.history.length).to eq 1
    end
  end

  describe '#withdrawl' do
    it 'deducts money to the balance' do
      account.deposit('02/04/2018',100)
      account.withdrawl('02/04/2018',50)
      expect(account.balance).to eq 50
    end

    it 'adds transaction to the history' do
      account.deposit('02/04/2018',100)
      account.withdrawl('02/04/2018',50)
      expect(account.history.length).to eq 2
    end
  end

end
