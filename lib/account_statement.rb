# frozen_string_literal: true

class AccountStatement
  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions << transaction
  end

  def print
    statement = 'date || credit || debit || balance\n'
    @transactions.each do |transaction|
      statement += "#{transaction['date']} || #{transaction['credit']} || #{transaction['debit']} || #{transaction['balance']}"
      statement += "\n"
    end
    statement
  end
end
