class MulCommand
  attr_reader :operand
  def initialize(operand)
    @operand = operand
  end

  def execute(calc, hist)
    hist.push_history(self)
    calc.multiply(@operand)
  end

  def execute_without_push(calc)
    calc.multiply(@operand)
  end
  
end 