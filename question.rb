require './player'

module MathGame
  class Question
    attr_reader :questions

    def initialize
      @number_one = rand(1..21)
      @number_two = rand(1..21)
    end

    def random_question
      puts "What is #{@number_one} + #{@number_two}?"

      if (gets.chomp.to_i == (@number_one + @number_two))
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts "Correct! You live another day!"
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
        true
      else
        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        puts "Wow... Time to go back to school."
        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n"
        false
      end
    end
  end
end