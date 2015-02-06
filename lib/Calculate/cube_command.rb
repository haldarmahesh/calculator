class CubeCommand

  def execute(calc, hist)
    hist.push_history(self)
    execute_without_push(calc)
  end
  def execute_without_push(calc)
    calc.cube
  end  
end