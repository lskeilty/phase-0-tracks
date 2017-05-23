class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times {puts "Woof"}
  end

  def roll_over(trick)
    p "#{trick}"
  end

  def dog_years(integer)
    p integer * 7
  end

  def shakes(body_part)
    p "Shakes: #{body_part}"
  end
  def initialize #if misspell, no error
    p "Initializing new puppy instance..." #This runs 1st
  end
end

#DRIVER CODE

Fido = Puppy.new

Fido.fetch("ball") #prints "I brought back the ball!"

Fido.speak(4)# puts "Woof Woof Woof Woof"

Fido.roll_over("*rolls over*") #prints "*rolls over*"

Fido.dog_years(5) #prints 35

Fido.shakes("paw") #prints "Shakes: paw"