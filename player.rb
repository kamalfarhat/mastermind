class Player
    attr_accessor :type
    
    def initialize()
        @type = 0
    end

    def get_guess(n)

        puts "\nTurn #" + n.to_s + ": Type in four numbers (1-6) to guess code"
        guess = gets.chomp
        while !guess.split('').all? {|s| "123456".include? s} || guess.length != 4
            puts "please enter a valid guess"
            guess = gets.chomp
        end       
        guess
    end

    def get_code()
        puts "\nUsing digits 1-6, enter a 4 digit code for the computer to break"
        code = gets.chomp
        while !code.split('').all? {|s| "123456".include? s} || code.length != 4
            puts "please enter a valid code"
            code = gets.chomp
        end
        code
    end

    def get_player_type()
        puts "Would you like to be the code MAKER or the code BREAKER?\n\n"
        puts "Press 1 for the Code BREAKER\n"
        puts "Press 2 for the Code MAKER\n"
        @type = gets.chomp
        while @type != "1" && @type != "2"
            puts "please enter a valid code"
            @type = gets.chomp
        end
    end
end
