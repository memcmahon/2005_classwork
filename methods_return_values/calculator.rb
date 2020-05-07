class Calculator
  def print_welcome
    puts "Welcome to Calculator!"
  end

  def add(num1, num2) #parameters
    num1 + num2
  end

  def print_sum(first_number, second_number)
    sum = add(first_number, second_number)
    puts "The sum of #{first_number} and #{second_number} is #{sum}."
  end

  def subtract(num1, num2)
    num1 - num2
  end
end

calc1 = Calculator.new
calc2 = Calculator.new
calc3 = Calculator.new
calc.add(3, 7)
