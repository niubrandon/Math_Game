require './player'
class Game
  attr_accessor :name
  def initialize(name)
    @name = name
    @player1 = "A"
    @player2 = "B"
    @correct_answer = 0
    @answer = 0
    @player1_game = true
  end

  def start_new_game
    @player1 = Player.new("1")
    @player2 = Player.new("2")
    
  end

  def get_current_score
    puts "P1: #{@player1.current_live} vs P2: #{@player2.current_live}"
  end
  #move to game
  def game_result?(player1_turn)
    if @correct_answer == @answer
      puts "Yes! You are correct."
     
    else
      puts "Seriously? No!"
      #reduce hp
      player1_turn ? @player2.reduce_hp : @player1.reduce_hp
    end
  end

  #move to game
  def random_math_game(player1_turn)
    random_num = Random.new
    random_one = random_num.rand(20)
    random_two = random_num.rand(20)
    @correct_answer = random_one + random_two
    puts "Player#{player1_turn ? @player1 : @player2 }: What does #{random_one} plus #{random_two}? "
    @answer = gets.chomp.to_i
    puts "correct anser is #{@correct_answer} your answer is #{@answer}? "
  end



end
