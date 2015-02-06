class CubeRootCommand

  def execute(calc, hist)
    hist.push_history(self)
    calc.cuberoot
  end
  def execute_without_push(calc)
    calc.cuberoot
  end  
end