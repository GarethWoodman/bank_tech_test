class Account
  attr_accessor :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def transaction(amount)
    setup(amount)
    @transactions << [@date, @credit, @debit, @balance]
    @balance += amount
  end

  private
  def setup(amount)
    @debit, @credit = "", ""
    @date = Time.now.strftime("%d/%m/%Y")
    amount > 0 ? (@debit = amount) : (@credit = amount.abs)
  end
end
