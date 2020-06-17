# frozen_string_literal: true

require 'account'

describe Account do
  context 'Default values' do
    it 'has no transactions by default' do
      expect(subject.transactions).to eq []
    end
  end

  context 'Transactions' do
    describe 'updates balance' do
      it 'balance is 100 on deposit' do
        subject.deposit(100)
        expect(subject.transactions.last['balance']).to eq 100
      end

      it 'balance is -100 on withdrawal' do
        subject.withdraw(100)
        expect(subject.transactions.last['balance']).to eq -100
      end
    end

    describe 'stores each transaction' do
      it 'stores date, credit, debit, balance' do
        5.times { atm.deposit(100) }
        2.times { atm.withdraw(100) }
        expect(subject.transactions.last).to eq [DATE, 100, '', 400]
      end
    end
  end
end
