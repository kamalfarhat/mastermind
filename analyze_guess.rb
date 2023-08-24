class Game
    def analyze_guess()
        print "    Clues: "
        if @code == @guess
            puts (" " + " ".right_color_right_location + " ") * 4 + "\n"
        else
            guess_array = @guess.split('')
            code_array = @code.split('')
            @code.split('').each_with_index do |item, i|
                if item == @guess.split('')[i]
                print " ".right_color_right_location + " "
                guess_array.delete_at(guess_array.index(item))
                code_array.delete_at(code_array.index(item))
                end                
            end
            guess_array.uniq.each do |s|
                if code_array.include? s
                    print " ".right_color_wrong_location + " "
                end
            end
        end
        print "\n"
    end
end
