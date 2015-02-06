class CubeCommand

  def execute(calc, hist)
    hist.push_history(self)
    calc.cube
  end
  def execute_without_push(calc)
    calc.cube
  end  
end