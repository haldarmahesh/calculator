class DivCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc, hist)
    hist.push_history(self)
    calc.divide(@operand)
  end
  def execute_without_push(calc)
    calc.divide(@operand)
  end  
end