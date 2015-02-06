class AbsoluteCommand

  def execute(calc, hist)
    hist.push_history(self)
    execute_without_push(calc)
  end
  def execute_without_push(calc)
    calc.absolute
  end  
end