# frozen_string_literal: true

class Account
  def initialize(account_statement = AccountStatement.new)
    @account_statement = account_statement
    @last_transaction = {"date"=>"", "credit"=>0, "debit"=>0, "balance"=>0}
  end

  def deposit(amount)
    setup
    @transaction['debit'] = amount
    process
  end


  def withdraw(amount)
    setup
    @transaction['credit'] = amount
    process
  end

  private
  def setup
    @transaction = {"date"=>Time.now.strftime('%d/%m/%Y'), "credit"=>"",
                    "debit"=>"", "balance"=>@last_transaction['balance']}
  end

  def process
    if @last_transaction['credit'] == ''
      @transaction['balance'] += @last_transaction['debit']
    else
      @transaction['balance'] -= @last_transaction['credit']
    end
    @last_transaction = @transaction
    @account_statement.add(@transaction)
  end
end
