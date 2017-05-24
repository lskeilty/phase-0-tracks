class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age
  def initialize(gender, ethnicity)
    "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    index = @reindeer_ranking.index(reindeer)
    last = @reindeer_ranking.slice!(index)
    @reindeer_ranking.push(last)
  end
end

#array of sample genders
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

#array of sample ethnicities
 example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


 for i in 1..100
   new_santa = Santa.new(example_genders.sample,example_ethnicities.sample)
   p new_santa.age = rand(141) #random age up to 140
   p new_santa.gender
   p new_santa.ethnicity
   p new_santa.reindeer_ranking
 end