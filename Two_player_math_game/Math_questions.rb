# Generate math questions
class Math_equation
  def initialize
    @random_number1 = rand(1..20)
    @random_number2 = rand(1..20)
  end

  def print_question
    puts "#{@random_number1} + #{@random_number2}"
  end

  def answer
    @answer = @random_number1 + @random_number2
  end
end
