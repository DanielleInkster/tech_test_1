require 'account'

describe Account do
  it 'initializes with an empty balance' do
    expect(subject.balance).to eq 0
  end
end

