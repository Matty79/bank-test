require 'account'

describe Account do
subject(:account) { Account.new }

  describe '#initialize' do
    it 'opens account with a balance of 0' do
      expect(account.balance).to eq described_class::DEFAULT_BALANCE
    end
  end

  describe '#deposit' do
    it 'adds deposit amount to balance' do
      account.deposit(50)
      expect(account.balance).to eq 50
    end
  end

  describe '#withdrawal' do
    it 'removes withdrawal amount from balance' do
      account.deposit(50)
      expect(account.balance).to eq 50
    end

    it 'will not allow withdrawal if insufficient funds' do
      msg = 'Insufficient funds'
      account.deposit(40)
      expect { account.withdraw(50) }.to raise_error msg
    end
  end
end
