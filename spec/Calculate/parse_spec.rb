require 'spec_helper'

  describe 'Parse' do
    let(:parser){Parse.new}
    it 'add number command' do
      expect(parser.parsing("add 5").class).to eq(AddCommand)
    end

    it 'subtract number command' do
      expect(parser.parsing("subtract 2").class).to eq(SubCommand)
    end

    it 'multiply number command' do
      expect(parser.parsing("multiply 3").class).to eq(MulCommand)
    end

    it 'divide number command' do
      expect(parser.parsing("divide 3").class).to eq(DivCommand)
    end

     it 'cancel number command' do
      expect(parser.parsing("cancel").class).to eq(CancelCommand)
    end

     it 'repeat number command' do
      expect(parser.parsing("repeat 3").class).to eq(RepeatCommand)
    end

     it 'square number command' do
      expect(parser.parsing("square").class).to eq(SquareCommand)
    end

     it 'squareroot number command' do
      expect(parser.parsing("squareroot").class).to eq(SquareRootCommand)
    end

     it 'cube number command' do
      expect(parser.parsing("cube").class).to eq(CubeCommand)
    end

     it 'cuberoot number command' do
      expect(parser.parsing("cuberoot").class).to eq(CubeRootCommand)
    end

     it 'negate number command' do
      expect(parser.parsing("negate").class).to eq(NegateCommand)
    end

     it 'absolute number command' do
      expect(parser.parsing("absolute").class).to eq(AbsoluteCommand)
    end

  end


