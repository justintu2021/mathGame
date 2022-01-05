# Class Question_Answer
# - initialize: question, answer
# - method: create_question, check_answer


class Question_Answer
  attr_accessor :first_number, :second_number

  def initialize
    @first_number
    @second_number
  end
    
  def create_question
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    puts "What does #{@first_number} plus #{@second_number} equal ?"
  end

  def check_answer(user_input)
    sum = @first_number + @second_number
    if sum == user_input
      puts "Yes! You are correct"
      return true
    else
      puts "Seriously? No!"
      return false
    end  
  end

end  


