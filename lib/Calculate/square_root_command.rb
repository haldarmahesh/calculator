class SquareRootCommand
  def execute(calc, hist)
    hist.push_history(self)
    calc.squareroot
  end
  def execute_without_push(calc)
    calc.squareroot
  end
end