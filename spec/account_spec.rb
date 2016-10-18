require 'account'

describe Account do
subject(:account) { Account.new }

  describe '#initialize' do
    it 'opens account with a balance of 0' do
      expect(account.balance).to eq described_class::DEFAULT_BALANCE
    end
  end

end
