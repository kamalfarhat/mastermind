require_relative "string_colors"
require_relative "display_instructions"
require_relative "player"
require_relative "code_solver"
require_relative "analyze_guess"
require_relative "display_results"

class Game
    def initialize()
        @code = ""
        @num_of_trials = 0
        @guess = ""
        display_instructions
    end

    def reset()
        @code = ""
        @num_of_trials = 0
        @guess = ""    
    end

    def play_game(player)
        player.get_player_type()
        generate_or_get_code(player)
        while @guess != @code && @num_of_trials < 12
            generate_or_get_guess(player, @num_of_trials+1)
            display_guess(player)
            sleep 1
            analyze_guess()
            @num_of_trials += 1
        end
        display_results(player)
    end

    def generate_or_get_code(player)
        if player.type == "1"
            @code = Array.new(4) { Array('1'..'6').sample }.join
        else
            @code = player.get_code
        end
    end

    def generate_or_get_guess(player, n)
        if player.type == "2"
            generate_computer_guess()
        else
            @guess = player.get_guess(n)
        end
    end

    def display_guess(player)
        for i in 0...4 do
            color = "color_bg_" + @guess[i]
            print ("  " + @guess[i] + "  ").send(color) + " "
        end 
    end
    
end

game = Game.new()
player = Player.new()
game.play_game(player)
