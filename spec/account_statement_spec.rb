require 'account_statement'

describe AccountStatement do
  let(:account_statement) { AccountStatement.new}
  let(:account)           { Account.new(account_statement) }

  context 'few transactions made' do
    let(:make_transactions) do
      account.deposit(50)
      account.deposit(10)
      account.withdraw(20)
    end

    it 'prints account statement' do
      make_transactions

      statement =  'date || credit || debit || balance\n'
      statement += "#{DATE} ||  || 50.00 || 0.00\n"
      statement += "#{DATE} ||  || 10.00 || 50.00\n"
      statement += "#{DATE} || 20.00 ||  || 60.00\n"

      expect(account_statement.print).to eq statement
    end
  end
end
