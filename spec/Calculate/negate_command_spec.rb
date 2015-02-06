require 'spec_helper'

describe 'NegateCommand' do
  let(:history) { History.new }  
  let(:command) {NegateCommand.new}
  let(:calc) {Calculator.new(-10)}  
  it 'performs negate' do
    expect(command.execute(calc, history)).to eq(10)
  end
  it 'performs negation without push' do
    (NegateCommand.new).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end