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

  describe '#make_deposit' do
    it 'adds money to the balance' do
      account.make_deposit(50)
      expect(account.balance).to eq 50
    end

    it 'adds transaction to the history' do
      account.make_deposit(50)
      expect(account.history).to eq [[Time.now.strftime('%x') + ' || 50 || || 50']]
    end
  end

  describe '#make_withdrawl' do
    it 'deducts money to the balance' do
      account.make_deposit(100)
      account.make_withdrawl(50)
      expect(account.balance).to eq 50
    end

    it 'adds transaction to the history' do
      account.make_deposit(100)
      account.make_withdrawl(50)
      expect(account.history).to include([Time.now.strftime('%x') + ' || || 50 || 50'])
    end
  end

  describe '#print_statement' do
    it 'displays the operations' do
      account.make_deposit(1000)
      expected = "date || credit || debit || balance\n" +
      Time.now.strftime('%x') + " || 1000 || || 1000\n"
      expect { account.print_statement } .to output(expected).to_stdout
    end
  end

end
