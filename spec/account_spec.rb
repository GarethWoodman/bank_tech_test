require './account'

describe Account do
  it 'has a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'has no transactions by default' do
    expect(subject.transactions).to eq []
  end
end
