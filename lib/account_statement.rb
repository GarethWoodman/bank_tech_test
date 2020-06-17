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
      statement += "#{transaction['date']} || "

      if transaction['credit'] != ''
        transaction['credit'] = '%.2f' % transaction['credit']
      else
        transaction['debit'] = '%.2f' % transaction['debit']
      end

      statement += "#{transaction['credit']} || "
      statement += "#{transaction['debit']} || "
      statement += "#{'%.2f' % transaction['balance']}\n"
    end
    statement
  end
end
