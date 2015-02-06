require 'spec_helper'

describe 'CubeRootCommand' do
  let(:history) { History.new }
  let(:command) {CubeRootCommand.new}
  let(:calc) {Calculator.new(8)}
  it 'performs cube root' do
    expect(command.execute(calc, history)).to eq(2)
  end
  it 'performs CubeRoot without push' do
    (CubeRootCommand.new).execute_without_push(calc)
    expect(history.history.size).to eq(0)
  end

end