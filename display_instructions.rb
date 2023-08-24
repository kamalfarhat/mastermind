class Game
    def display_instructions()
        puts "How to play Mastermind:".underline.bold
        puts "\nThis is a 1-player game against the computer.\nYou can choose to be the code maker or the code breaker."
        puts "There are six different number/color combinations:"
        puts " 1 ".color_bg_1 + " " + " 2 ".color_bg_2 + " " + " 3 ".color_bg_3 + " " + " 4 ".color_bg_4 + " " + " 5 ".color_bg_5 + " " + " 6 ".color_bg_6   
        puts "The code maker will choose four to create a 'master code'. For example:"
        puts " 1 ".color_bg_1 + " " + " 3 ".color_bg_3 + " " + " 4 ".color_bg_4 + " " + " 1 ".color_bg_1 
        puts "As you can see, there can be" + " more then one".red.bold + " of the same number/color.\n"
        puts "In order to win, the code breaker needs to guess the 'master code' in 12 or less turns.\n\n"
        puts "Clues:".underline.bold
        puts "After each guess, there will be up to four clues to help crack the code.\n"
        puts " ".right_color_right_location + " This clue means you have 1 correct number in the correct location."
        puts " ".right_color_wrong_location + " This clue means you have 1 correct number, but in the wrong location.\n"
        puts "Clue Example:".underline.bold
        puts "To continue the example, using the above 'master code' of " + "1341" + ", a guess of " + "1463" + " would produce 3 clues:"
        puts " 1 ".color_bg_1 + " " + " 4 ".color_bg_4 + " " + " 6 ".color_bg_6 + + " " + " 3 ".color_bg_3 + "  Clues: " + " ".right_color_right_location + " " + " ".right_color_wrong_location + " " + " ".right_color_wrong_location
        puts "The guess had 1 correct number in the correct location and 2 correct numbers in a wrong location.\n\n"
        puts "It's time to play!".underline.bold
    end
end