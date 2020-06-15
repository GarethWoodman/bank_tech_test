require './account'

describe Account do
  context 'Attributes' do
    it 'has a default balance of 0' do
      expect(subject.balance).to eq 0
    end
  end
end
