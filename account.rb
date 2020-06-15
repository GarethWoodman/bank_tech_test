class Account
  attr_accessor :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def transaction(amount)
    debit = 0
    credit = 0
    date = Time.now.strftime("%d/%m/%Y")
    amount > 0 ? (debit = amount) : (credit = amount.abs)

    @transactions << [date, credit, debit, @balance]
    @balance += amount
  end
end
