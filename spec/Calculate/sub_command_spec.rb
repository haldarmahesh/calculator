require 'spec_helper'

describe 'SubCommand' do
  let(:history) { History.new }  
  let(:command) { SubCommand.new(5)}
  let(:calc) {Calculator.new(2)}  
  it 'performs subtraction' do
    expect(command.execute(calc, history)).to eq(-3)
  end
  it 'performs subtraction without push' do
    (SubCommand.new(5)).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end