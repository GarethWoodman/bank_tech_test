require 'account_statement'

describe AccountStatement do
  let(:account_statement) { AccountStatement.new}
  let(:account)           { Account.new(account_statement) }

  context 'few transactions made' do
    let(:make_transactions) do
      account.deposit(50.00)
      account.deposit(10.00)
      account.withdraw(20.00)
    end

    it 'prints account statement' do
      make_transactions

      statement =  'date || credit || debit || balance\n'
      statement += "#{DATE} ||  || 50.0 || 0\n"
      statement += "#{DATE} ||  || 10.0 || 50.0\n"
      statement += "#{DATE} || 20.0 ||  || 60.0\n"

      expect(account_statement.print).to eq statement
    end
  end
end
