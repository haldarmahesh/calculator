require 'spec_helper'

  describe 'Calculator' do
  let(:num1) {Calculator.new()}
  let(:num2) {Calculator.new(-5)}
  let(:num3) {Calculator.new(4)}
  let(:num4) {Calculator.new(8)}

  it 'add number' do
    expect(num1.add(5)).to eq(5)
  end

  it 'subtract number' do
    expect(num1.subtract(2)).to eq(-2)
  end

  it 'multiply number' do
    expect(num1.multiply(4)).to eq(0)
  end

  it 'divide number' do
    expect(num1.divide(3)).to eq(0)
  end
  
  it 'absolute value' do
    expect(num2.absolute).to eq(5)
  end

  it 'negate value' do
    expect(num2.negate).to eq(5)
  end

  it 'square root' do
    expect(num3.squareroot).to eq(2)
  end

  it 'square' do
    expect(num2.square).to eq(25)
  end

  it 'cube root' do
    expect(num4.cuberoot).to eq(2)
  end

  it 'cube' do
    expect(num2.cube).to eq(-125)
  end

  it 'cancel' do
    expect(num2.cancel).to eq(0)
  end

end


