require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it 'initializes with an account' do
  expect(statement.account.nil?).to eq false
  end
end