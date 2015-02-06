require 'spec_helper'

describe 'SquareRootCommand' do
  let(:history) { History.new }
  let(:command) {SquareRootCommand.new}
  let(:calc) {Calculator.new(4)}
  it 'performs square root' do
    expect(command.execute(calc, history)).to eq(2)
  end
  it 'performs Square root command without push' do
    SquareRootCommand.new.execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end