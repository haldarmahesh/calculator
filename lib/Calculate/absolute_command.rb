class AbsoluteCommand

  def execute(calc, hist)
    hist.push_history(self)
    calc.absolute
  end
  def execute_without_push(calc)
    calc.absolute
  end  
end