require 'spec_helper'

describe 'RepeatCommand' do
  let(:parse) {Parse.new  }
  let(:history1) {History.new}
  let(:calc) {Calculator.new(0)}
  let(:repeat_obj) { RepeatCommand.new(2) }
  it 'performs repeat' do
     AddCommand.new(5).execute(calc, history1)
     MulCommand.new(2).execute(calc, history1)
     repeat_obj.execute(calc, history1)
     expect(calc.result).to eq(30)
    
  end

end