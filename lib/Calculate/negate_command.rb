class NegateCommand

  def execute(calc, hist)
    hist.push_history(self)
    calc.negate       
  end
  def execute_without_push(calc)
    calc.negate
  end  
end