require './account_statement'
DATE = Time.now.strftime("%d/%m/%Y")

describe AccountStatement do
  let(:account)           { Account.new }
  let(:atm)               { Atm.new(account) }
  let(:account_statement) { AccountStatement.new(account)}

  context 'few transactions made' do
    let(:make_transactions) do
      atm.deposit(50.00)
      atm.deposit(10.00)
      atm.withdraw(20.00)
    end

    it 'prints account statement' do
      make_transactions

      statement =  "date || credit || debit || balance\n"
      statement += "#{DATE} ||  || #{50.00} || #{0}\n"
      statement += "#{DATE} ||  || #{10.00} || #{50.00}\n"
      statement += "#{DATE} || #{20.00} ||  || #{60.00}\n"

      puts statement

      expect(account_statement.print).to eq statement
    end
  end
end
