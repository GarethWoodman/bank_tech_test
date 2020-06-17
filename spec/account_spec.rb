# frozen_string_literal: true

require 'account'

describe Account do
  it 'can deposit' do
    expect(subject).to respond_to(:deposit)
  end

  it 'can withdraw' do
    expect(subject).to respond_to(:withdraw)
  end
end
