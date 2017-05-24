module Shout
 def yell_angrily(words)
    p words + "!!!" + " :("
  end
  def yelling_happily(words)
    p words + "!" + " :)"
  end
end

class Losing_sports_fan
  include Shout
end

class Winning_sports_fan
  include Shout
end


#DRIVERCODE

losing_sports_fan = Losing_sports_fan.new
losing_sports_fan.yell_angrily("This is no fun")

winning_sports_fan = Winning_sports_fan.new
winning_sports_fan.yelling_happily("I love sports")