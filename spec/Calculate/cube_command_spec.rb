require 'spec_helper'

describe 'CubeCommand' do
  let(:history) { History.new }  
  let(:command) {CubeCommand.new}
  let(:calc) {Calculator.new(3)}
  
  it 'performs cube' do
    expect(command.execute(calc, history)).to eq(27)
  end
  it 'performs cube without push' do
    (CubeCommand.new).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end


end