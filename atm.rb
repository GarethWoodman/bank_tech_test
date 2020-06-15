class Atm
  def initialize(account = Account.new)
    @account = account
  end

  def deposit(amount)
    @account.transaction(amount)
  end
end
