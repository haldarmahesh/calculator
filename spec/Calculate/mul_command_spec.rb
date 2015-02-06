require 'spec_helper'

describe 'MulCommand' do
  let(:history) { History.new }
  let(:command) { MulCommand.new(5)}
  let(:calc) {Calculator.new(2)}
  it 'performs multiplication' do
    expect(command.execute(calc, history)).to eq(10)
  end
  it 'performs multiplication without push' do
    (MulCommand.new(5)).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end