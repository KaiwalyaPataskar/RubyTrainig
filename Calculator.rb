class Calculator
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def add
    @number1 + @number2
  end

  def subtract
    @number1 - @number2
  end

  def multiply
    @number1 * @number2
  end

  def divide
    (@number1 / @number2).to_f
  end

  def method
    p methods - Calculator.methods
  end

  def self.method
    p Calculator.methods - Class.methods
  end

  def perform_all_operations
    puts "Addition : #{add}"
    puts "Subtraction : #{subtract}"
    puts "Multiplication : #{multiply}"
    puts "Dividion : #{divide}"
  end

  def self.add?
    true
  end

  def self.subtract?
    true
  end

  def self.divide?
    true
  end

  def self.multiply?
    true
  end

  def self.perform_all_operations?
    true
  end
end

begin
  puts '', 'Enter fist number : '
  number1 = gets.chomp.to_i
  puts 'Enter second number : '
  number2 = Integer(gets.chomp)
  p number1, number2
  calculator = Calculator.new(number1, number2)
  puts '', 'calculator.perform_all_operations  : '
  calculator.perform_all_operations
  puts '', 'Methods of Calculator\'s instance : '
  calculator.method
  puts '', 'Methods of Calculator Class : '
  Calculator.method
  puts '', 'Calculator.subtract? :'
  p Calculator.subtract?
  puts ''
rescue ArgumentError => e
  p "Exception :  #{e.message}"
  retry
end
