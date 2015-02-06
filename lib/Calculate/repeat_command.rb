class RepeatCommand

  def initialize(operand)
    @operand = operand
  end
  
  def execute(calc, hist)
    hist.pop_history(@operand, calc)
  end
  
end