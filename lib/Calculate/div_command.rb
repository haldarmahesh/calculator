class DivCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc, hist)
    hist.push_history(self)
    execute_without_push(calc)
  end
  def execute_without_push(calc)
    calc.divide(@operand)
  end  
end