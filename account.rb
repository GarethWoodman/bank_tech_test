class Account
  attr_accessor :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def transaction(amount, date)
    debit = 0
    credit = 0
    amount > 0 ? (debit = amount) : (credit = amount.abs)

    @transactions << [date, credit, debit, @balance]
    @balance += amount
  end
end
