class Game
  attr_accessor :user1_input
  attr_accessor :user2_input
  attr_reader :guess_count
  attr_accessor :blankword

  def intialize
    @guess_count
    @is_over
    @blankword = ''
  end

  def get_blankword(sample_word, guessed_letter)
    blankword = ' '
    sample_word.chars { |char|
     blankword += (guessed_letter.include? char)? char : ' _ '
    }
    @blankword = blankword
  end
end

#drivercode

puts "Welcome to the word guessing Game."
game = Game.new
tries = 0
right_guess = ""

puts "User 1, type in the secret word"
user1_input = gets.chomp
guess_count = user1_input.length

while true
  puts "User 2, [#{guess_count - tries} chances left] guess a letter:"
  user2_letter = gets.chomp


  if user1_input.include? user2_letter

    if (right_guess.include? user2_letter)
      puts user2_letter + ' - you already tried that letter & it is correct'
      puts 'Current guesses:' + game.get_blankword(user1_input, right_guess)
    else
      right_guess = right_guess + user2_letter
      blankword = game.get_blankword(user1_input, right_guess)
      puts "Correct guess!" + blankword
    end

    unless blankword.include? "_ "
      puts "You got it, you win!"
      break
    end
  else
    puts "Sorry, The word does not contain '#{user2_letter}'"
    tries += 1

    if tries == guess_count
    p "Game over...womp, womp, womp."
    break

    else
      puts 'Current Guesses:' + game.get_blankword(user1_input, right_guess)
    end
  end

end
