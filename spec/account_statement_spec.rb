require 'account_statement'

describe AccountStatement do
  let(:account_statement) { AccountStatement.new}
  let(:account)           { Account.new(account_statement) }

  context 'few transactions made' do
    let(:make_transactions) do
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)
    end

    it 'prints account statement' do
      make_transactions

      statement =  "date || credit || debit || balance\n"
      statement += "#{DATE} ||  || 500.00 || 2500.00\n"
      statement += "#{DATE} || 2000.00 ||  || 3000.00\n"
      statement += "#{DATE} || 1000.00 ||  || 1000.00\n"

      expect(account_statement.print).to eq statement
    end
  end
end
