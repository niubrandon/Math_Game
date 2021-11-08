require './game'


#initilize a game
fresh_game = Game.new("master game")
#start a new game
fresh_game.start_new_game

#loop through until one of the hp is 0
#lead is 1 or 2 in turns
player1_ask_question = true
fresh_game.random_math_game(true)
fresh_game.game_result?(true)
fresh_game.get_current_score

player1_ask_question = false
fresh_game.random_math_game(false)
fresh_game.game_result?(false)
fresh_game.get_current_score