require './atm'

describe Atm do
  let(:account) { Account.new }
  let(:atm)     { Atm.new(account) }

  it "can deposit" do
    atm.deposit(150)
    expect(account.balance).to eq 150
  end
end
