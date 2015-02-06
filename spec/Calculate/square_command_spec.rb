require 'spec_helper'

describe 'SquareCommand' do
  let(:history) { History.new }  
  let(:command) {SquareCommand.new}
  let(:calc) {Calculator.new(10)}  
  it 'performs square' do
    expect(command.execute(calc, history)).to eq(100)
  end
  it 'performs Square without push' do
    (SquareCommand.new).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end