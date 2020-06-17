# frozen_string_literal: true

class AccountStatement
  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions << transaction
  end

  def print
    statement = "date || credit || debit || balance\n"
    @transactions.reverse.each do |transaction|
      convert_to_decimal(transaction)
      statement += "#{transaction['date']} || "
      statement += "#{transaction['credit']} || "
      statement += "#{transaction['debit']} || "
      statement += "#{transaction['balance']}\n"
    end
    statement
  end

  private

  def convert_to_decimal(transaction)
    if transaction['credit'] != ''
      transaction['credit'] = '%.2f' % transaction['credit']
    else
      transaction['debit'] = '%.2f' % transaction['debit']
    end

    transaction['balance'] = '%.2f' % transaction['balance']
  end
end
