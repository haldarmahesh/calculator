#this class deals with the bad commands
require 'colorize'
class BadCommand
  def execute(calc, history)
   "Bad commands, please enter valid commands. Thank you :)".colorize(:red)
  end
end

