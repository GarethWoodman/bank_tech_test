class Atm
  def initialize(account)
    @account = account
  end

  def deposit(amount)
    @account.transaction(amount)
  end

  def withdraw(amount)
    @account.transaction(-amount)
  end
end
