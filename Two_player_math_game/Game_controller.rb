# Win conditions, end game, swap turns, answer questions
# evaluate if the answers are correct

require './player.rb'
require './turn_manager.rb'
require './Math_questions.rb'

class Game
  def initialize
    player1 = Players.new("player 1")
    player2 = Players.new("player 2")
    @players = [player1, player2]
    @turns = Turn.new(@players)
  end

  def play
    while !game_over? do
      @equation = Math_equation.new
      current_player = @turns.current_player
      swap_player = @turns.next
      correct_answer = @equation.answer
      print_question = @equation.print_question

      puts "#{current_player.name} : #{print_question}"
      input = gets
      input = Integer(input.chomp)

      if input != correct_answer
        puts "The correct answer was #{correct_answer}"
        current_player.take_damage
      else
        puts "That was the correct answer"
      end
      puts "#{current_player.name} : #{current_player.current_health}/#{current_player.max_health}"
      if game_over?
        puts "game over! #{current_player.name} has lost"
      end
    end
  end

  def game_over?
    @players.any? { |ply| ply.lost? }
  end

  def swap_players
    @turn_manager.next
  end

  def print_summary
    puts "#{@name}: #{@current_health}/#{@max_health} life"
  end
end
