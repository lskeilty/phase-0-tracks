=begin class Puppy

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

=end

class Gymnastics
  def initialize
    puts "Initializing new Gymnastics instance"
  end

  def flip(move)
    p "The gymnast did a #{move} flip"
  end

  def jump(feet)
    p "The gymnast jumped #{feet} feet in the air!"
  end
end

#modify loop so it stores instances in a data structure
gymnasts = []
#use a loop to make 50 instances (gymnasts) of your class (Gymnastics)
50.times do Gymnastics.new
  gymnasts << Gymnastics.new
end

#iterate over data structure using each & call instance methods
gymnasts.each do |gymnast|
  p gymnast.flip("front")
end

gymnasts.each do |gymnast|
  p gymnast.jump(8)
end










