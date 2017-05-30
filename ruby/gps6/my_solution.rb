# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#Allows access of contents from another file. You can use require for files out of the scope of your code. The difference is where it looks to find the code. Need extension with require.
require_relative 'state_data'

class VirusPredictor
#initializes the method and the variables that are in the state_data for 1 particular state at a time

#class method
  def self.print_report(states)
    states.each do |state, pop|
      new(state, pop[:population_density], pop[:population]).virus_effects
    end
  end

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



#calls the other 2 methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
#limits what is available to others, methods below it can't be called to methods above it. can put a public declaration too, usually grouped together.
private
#for each individual state, this method, depending on the population density determines the # of deaths based on population.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 50
     number_of_deaths = (@population * predicted_deaths_multiplier).floor

    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def predicted_deaths_multiplier
    @population_density / 50 * 0.1
  end

#this method will output the rate of spread based on the parameters of pop density and state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.print_report(STATE_DATA)

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section