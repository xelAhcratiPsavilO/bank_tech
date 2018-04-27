require 'debit'

describe Debit do
  before(:each) do
    @debit = Debit.new('02/04/2018', 500, 800)
  end
  describe '#new' do
    it 'initializes date' do
      expect(@debit.date).to eq '02/04/2018'
    end
    it 'initializes amount' do
      expect(@debit.amount).to eq 500
    end
    it 'initializes balance' do
      expect(@debit.balance).to eq 800
    end
  end
end
