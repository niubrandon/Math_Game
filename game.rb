require './player'

class Game

  attr_accessor :name
  attr_reader :status

  def initialize(name)
    @name = name
    @player1 = "A"
    @player2 = "B"
    @correct_answer = 0
    @answer = 0
    @player1_game = true
    @status = "Pending"
  end

  def start_new_game
    @player1 = Player.new("1")
    @player2 = Player.new("2")
    @status = "Start"
    
  end

  def get_current_score
    puts "P1: #{@player1.current_live} vs P2: #{@player2.current_live}"
  end
 
  def game_result?(player1_turn)
    if @correct_answer == @answer
      puts "YES! You are correct."
     
    else
      puts "Seriously? No!"
      player1_turn ? @player2.reduce_hp : @player1.reduce_hp
    end
  end

  def random_math_game(player1_turn)
    random_num = Random.new
    random_one = random_num.rand(20)
    random_two = random_num.rand(20)
    @correct_answer = random_one + random_two
    puts "Player #{player1_turn ? @player1.name : @player2.name }: What does #{random_one} plus #{random_two} equal?"
    @answer = gets.chomp.to_i
    #puts "correct anser is #{@correct_answer} your answer is #{@answer}? "
  end

  def check_game_over
    if @player1.live == 0
      puts "Player 2 wins with a score of #{@player2.live}/3 "
      puts "---- GAME OVER ----"
      puts "Good bye!"
      @status = "END"
    elsif @player2.live == 0
      puts "Player 1 wins with a socre of #{@player1.live}/3"
      puts "---- GAME OVER ----"
      puts "Good bye!"
      @status = "END"
    else 
      puts "---- NEW TURN ----"
    end
      
  end

end
