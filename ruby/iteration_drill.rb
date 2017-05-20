# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]


# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
#zombie_apocalypse_supplies.each {|supply| print supply+"*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def alphabetize(array)
  i = 0
  a_length = array.length

  while i < a_length
  ib = i + 1
    while ib < array.length
      if array[i].downcase > array[ib].downcase
        array[i], array[ib] = array[ib], array[i]
      end
      ib += 1
    end
    i += 1
  end
  return array
end

puts alphabetize(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def search(array)
  puts "Type item you are looking for."
  item = gets.chomp

  in_supplies = false

  array.each do |array_item|
    if array_item == item
      in_supplies = true
    end
  end

  if in_supplies == true
    return "That item is in our supplies"
  else
    return "We do not have that item"
  end
end

search(zombie_apocalypse_supplies)



# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----



 i = 0
 supply_list = zombie_apocalypse_supplies
 a_length = zombie_apocalypse_supplies.length
  while i < a_length
    if i > 4
       supply_list[i] = nil
    end
    i += 1
  end

p supply_list




# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove", "solar battery", "flashlight"]
# ----

puts combined_list = zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
  value = value.to_s
  puts "#{animal}-#{year}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|

  if value < 2000
    year = year.to_s
    puts "#{animal}:#{year}"
  end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
  year = year - 3
  puts "#{animal}: #{year}"
end


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----


extinct_animals.each do |animal, year|
  animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
  i = 0
  while i < animals.length
    if animal ==  animals[i]
      puts "#{animal} is on the list :("
    end
    i += 1
  end
end



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals.assoc("Passenger Pigeon")