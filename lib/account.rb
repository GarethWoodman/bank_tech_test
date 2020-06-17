# frozen_string_literal: true

class Account
  attr_accessor :balance, :transactions
  def initialize
    @transactions = []
  end

  def deposit(amount)
    transaction = Hash.new

    transaction['date']    = Time.now.strftime('%d/%m/%Y')
    transaction['credit']  = ''
    transaction['debit']   = amount

    if @transactions.last
      transaction['balance'] = @transactions.last['balance'] += amount
    else
      transaction['balance'] = amount
    end

    @transactions << transaction
  end


  def withdraw(amount)
    transaction = Hash.new

    transaction['date']    = Time.now.strftime('%d/%m/%Y')
    transaction['credit']  = amount
    transaction['debit']   = ''

    if @transactions.last
      transaction['balance'] = @transactions.last['balance'] -= amount
    else
      transaction['balance'] = (-amount)
    end

    @transactions << transaction
  end

end
