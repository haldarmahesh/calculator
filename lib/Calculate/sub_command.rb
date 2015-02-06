class SubCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc, hist)
    hist.push_history(self) 
    calc.subtract(@operand)
  end
  def execute_without_push(calc)
    calc.subtract(@operand)
  end
end