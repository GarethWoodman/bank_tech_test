require 'account'

describe Account do
  context 'Default values' do
    it 'has a default balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'has no transactions by default' do
      expect(subject.transactions).to eq []
    end
  end

  context 'Transactions' do
    let(:atm) do
      atm = double("ATM")
      atm.stub(:deposit).with(100)  { subject.transaction(100) }
      atm.stub(:withdraw).with(100) { subject.transaction(-100) }
      atm
    end

    describe 'updates balance' do
      it 'balance is 100 on deposit' do
        atm.deposit(100)
        expect(subject.balance).to eq 100
      end

      it 'balance is -100 on withdrawal' do
        atm.withdraw(100)
        expect(subject.balance).to eq -100
      end
    end

    describe 'stores each transaction' do
      it 'stores date, credit, debit, balance' do
        5.times { atm.deposit(100) }
        2.times { atm.withdraw(100) }
        expect(subject.transactions.last).to eq [DATE, 100, "", 400]
      end
    end
  end
end
