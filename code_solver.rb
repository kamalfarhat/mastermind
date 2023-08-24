class Game
    def generate_computer_guess()
        puts "Computer turn #" + (@num_of_trials+1).to_s
        if @num_of_trials+1 == 1
            @guess = Array.new(4) { Array('1'..'6').sample }.join
        else
            guess_array_new = []
            guess_array_old = @guess.split('')
            code_array = @code.split('')
            @code.split('').each_with_index do |item, i|
                if item == @guess.split('')[i]
                    guess_array_new[i] = item
                    guess_array_old.delete_at(guess_array_old.index(item))
                    code_array.delete_at(code_array.index(item))
                end
            end
            guess_array_old.uniq.each do |s|
                if code_array.include? s
                    guess_array_new.push(s)
                end
            end
            guess_array_new.delete(nil)
            if guess_array_new.length == 4
                @guess = guess_array_new.shuffle.join
            elsif !guess_array_new.empty?
                @guess = guess_array_new.join + Array.new(4-guess_array_new.length) { Array('1'..'6').sample }.join
            else
                @guess = Array.new(4) { Array('1'..'6').sample }.join
            end
        end
    end
end