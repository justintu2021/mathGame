# Class Game
# - initialize: 
# - method: game_loop, whose_turn, decide_who_won

require './Player'
require './Question_Answer'



class Game

  def initialize
    @player1 = Player.new(1,3)
    @player2 = Player.new(2,3)
    @question = Question_Answer.new
    @turn = 1
    game_loop
  end

  def game_loop
    while @player1.life > 0 && @player2.life > 0 
      puts "P1:#{@player1.life}/3   P2:#{@player2.life}/3"

      if @turn == 1 
        puts "Player 1: #{@question.create_question}"
      else 
        puts "Player 2: #{@question.create_question}"
      end

      user_input = gets.chomp.to_i

      if @turn == 1 && !@question.check_answer(user_input)
        @player1.manage_life()
      end
      if @turn != 1 && !@question.check_answer(user_input) 
        @player2.manage_life()
      end
      change_turn
    end

    if @player1.life == 0 || @player2.life == 0
      decide_who_won
    end
  end
  
  def change_turn
    if @turn == 1
      @turn = 2
    else 
      @turn = 1
    end
  end

  def decide_who_won
    if @player1.life == 0
      puts "play2 won"
    elsif @player2.life == 0
      puts "play1 won"
    end
    puts "goodbye"
  end
end

Game.new

