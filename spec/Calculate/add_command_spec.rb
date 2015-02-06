require 'spec_helper'

describe 'AddCommand' do
  let(:history) { History.new }  
  let(:command) { AddCommand.new(5)}
  let(:calc) {Calculator.new(2)}
  it 'performs addition' do
    expect(command.execute(calc, history)).to eq(7)
  end
  it 'performs addition without push' do
    (AddCommand.new(5)).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end