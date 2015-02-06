require 'spec_helper'

describe 'CancelCommand' do
  let(:command) {CancelCommand.new}
  let(:calc) {Calculator.new(21)}
  
  it 'performs cancel' do
    expect(command.execute(calc)).to eq(0)
  end

end