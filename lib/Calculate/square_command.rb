class SquareCommand

  def execute(calc, hist)
    hist.push_history(self)
    calc.square
  end
  def execute_without_push(calc)
    calc.square
  end  
end