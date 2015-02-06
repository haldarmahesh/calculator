#Launches the application
class Application

  def initialize
     @calci = Calculator.new
     @history = History.new
  end

  def start
    parser = Parse.new
    print "$ "
    input = gets.chomp
    while true do 
        command = parser.parsing(input)
        puts command.execute(@calci, @history)
        print "$ "
        input = gets.chomp
    end
  end

  def start_test
    parser = Parse.new
    input = Kernel.gets.chomp
    command = parser.parsing(input)
  end

end