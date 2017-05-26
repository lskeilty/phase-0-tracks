class Game

  #def add(x,y)
   # x + y
  #end

def get_blankword(sample_word, guessed_letter)
    blankword = ' '
    sample_word.chars { |char|
     blankword += (guessed_letter.include? char)? char : ' _ '
    }
    @blankword = blankword
  end

end