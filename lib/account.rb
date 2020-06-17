# frozen_string_literal: true

class Account
  def initialize(account_statement = AccountStatement.new)
    @account_statement = account_statement
    @last_balance = 0
  end

  def deposit(amount)
    setup
    @transaction['credit'] = amount
    @transaction['balance'] += amount
    process
  end


  def withdraw(amount)
    setup
    @transaction['debit'] = amount
    @transaction['balance'] -= amount
    process
  end

  private
  def setup
    @transaction = { 'date'=>Time.now.strftime('%d/%m/%Y'), 'credit'=>'',
                     'debit'=>'', 'balance'=>@last_balance }
  end

  def process
    @account_statement.add(@transaction)
    @last_balance = @transaction['balance']
  end
end
