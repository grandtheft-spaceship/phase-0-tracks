class NextLetter
  attr_accessor :board, :is_complete, :secret_letters, :amount_of_guesses

  def initialize
    @board = []
    @is_complete = false
    @secret_letters = []
  end

  def setup_board(word)
    number_of_slots = word.length
    @amount_of_guesses = word.length

    number_of_slots.times do 
      @board << "_"
    end
    return @board
  end

  def split(word)
    @secret_letters = word.split("")
  end

  def display_board
    if ! @board.include?("_")
      @is_complete = true

      puts "................................................"
      p "The mystery word was: " + @board.join
      puts "Congrats! You've guessed the correct word in #{@amount_of_guesses} guesses!"
      puts "................................................"
    else
      p @board

      @amount_of_guesses -= 1
    end
  end  

  def verify_guess(letter)

    puts "You have #{@amount_of_guesses} guesses left..."

    if @amount_of_guesses == 0
      puts "Game Over. You ran out of guesses :("
    end

    @secret_letters.each_with_index do |position, index|
      @index = index

      if letter == position
        @board[index] = letter
      end
    end   
  end
end


=begin
  
-------------- USER INTERFACE ------------------

=end

puts "................................................"

puts "Hey Folks! Welcome to another round of 'Next Letter!' The game show where you try to guess a word, in as few guesses possible, just one letter at a time. I'm your host, Mr. Ruby!"

puts "................................................"

puts "The rules to play 'Next Letter' are simple! One person will think of a word and setup the board using that word. Then, the other user will attempt to guess the word, one letter at a time. Now, let's begin!"

puts "................................................"

game = NextLetter.new

puts "User 1 - Please input the mystery word now..."

puts "................................................"

mystery_word = gets.chomp

game.split(mystery_word)
game.setup_board(mystery_word)

puts "................................................"

puts "Amount of Guesses: #{game.amount_of_guesses}"

puts "................................................"

puts "Current Board: "
game.display_board

puts "................................................"

puts "User 2 - Lets begin entering your guesses. Please only type in one letter and press 'Enter'"


while !game.is_complete
  user_guess = gets.chomp

  game.verify_guess(user_guess)
  game.display_board
end

















