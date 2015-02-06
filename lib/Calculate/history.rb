class History
  attr_reader :history
  def initialize
    @history= []
  end

  def push_history(command)
    @history.push(command)
  end

  def pop_history(operand, calc)
    result = nil
     index = @history.length - operand
     while index  < @history.length
       result = @history[index].execute_without_push(calc)
       index += 1
     end
    return result
  end
end
