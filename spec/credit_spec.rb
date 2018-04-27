require 'credit'

describe Credit do
  before(:each) do
    @credit = Credit.new('02/04/2018', 500, 800)
  end
  describe '#new' do
    it 'initializes date' do
      expect(@credit.date).to eq('02/04/2018')
    end
    it 'initializes amount' do
      expect(@credit.amount).to eq 500
    end
    it 'initializes balance' do
      expect(@credit.balance).to eq 800
    end
  end
end
