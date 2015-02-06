require 'spec_helper'

describe 'DivCommand' do
  let(:history) { History.new }  
  let(:command) { DivCommand.new(5)}
  let(:calc) {Calculator.new(10)}  
  it 'performs division' do
    expect(command.execute(calc, history)).to eq(2)
  end
  it 'performs division without push' do
    (DivCommand.new(5)).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end