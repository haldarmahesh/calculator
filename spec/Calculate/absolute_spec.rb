require 'spec_helper'

describe 'AboluteCommand' do
  let(:history1) { History.new } 
  let(:command) {AbsoluteCommand.new}
  let(:calc) {Calculator.new(-10)}
  it 'performs absolute' do
    expect(command.execute(calc, history1)).to eq(10)
  end
  it 'performs absolute without push' do
    (AbsoluteCommand.new).execute_without_push(calc)
    expect(history1.history.size).to eq(0)
  end

end