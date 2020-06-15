# frozen_string_literal: true

class AccountStatement
  def initialize(account)
    @account = account
  end

  def print
    statement = 'date || credit || debit || balance\n'
    @account.transactions.each do |transaction|
      statement += transaction.join(' || ')
      statement += "\n"
    end
    statement
  end
end
