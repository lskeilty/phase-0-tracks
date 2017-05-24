module Shout
 def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!" + " :)"
  end
end

#DRIVERCODE

p Shout.yell_angrily("no way")
p Shout.yelling_happily("I am happy")