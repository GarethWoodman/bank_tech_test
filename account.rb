class Account
  attr_accessor :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end
end
