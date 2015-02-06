class AddCommand
attr_reader :operand
  def initialize(operand)
    @operand = operand
  end

  def execute(calc, hist)
    hist.push_history(self)
    calc.add(@operand)
  end
  def execute_without_push(calc)
    calc.add(@operand)
  end
  
end