class Game
    def display_results(player)
        if @guess != @code 
            if player.type == "1"
                puts "\n" + "You lose!".red + " Play Again? (Press Y for Yes and any key for No)"
                choice = gets.chomp
            else
                puts "\n" + "You Win! the computer couldn't break your code".green + " Play Again? (Press Y for Yes and any key for No)"
                choice = gets.chomp
            end           
        else
            if player.type == "1"
                puts "\n" + "You win!".green + " Play Again? (Press Y for Yes and any key for No)"
                choice = gets.chomp
            else
                puts "\n" + "You lose! the computer broke your code".red + " Play Again? (Press Y for Yes and any key for No)"
                choice = gets.chomp
            end
        end
        if choice.match(/Y|y/)
            self.reset
            self.play_game(player)
        end
    end
end