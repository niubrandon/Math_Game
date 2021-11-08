require './game'

#initilize a game
master_game = Game.new("master game")
#start a new game
master_game.start_new_game
#let player1 ask questions first
player1_ask_question = true

while master_game.status != "END"
  
  master_game.random_math_game(player1_ask_question)
  master_game.game_result?(player1_ask_question)
  master_game.get_current_score
  player1_ask_question = !player1_ask_question
  master_game.check_game_over

end