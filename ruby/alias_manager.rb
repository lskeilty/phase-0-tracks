#this method takes the name given to us by the user input
#1st makes all letters lowercase, then separates first and last name.
#that value is passed to 'name' and the contents of name are seperated with a space between each letter into an array
#then the array will run through our next_letter method (to move vowels/consonants up on their respective indexes)
#the results from our next letter method are capitalized, reversed and a space is added between the 2 strings

def undercover_name(name)
  name.downcase.split(' ').map!{|name| name.split('').map! {|letter| next_letter(letter)}.join('').capitalize}.reverse.join(" ")
end

#define a next letter method
#we set the strings for vowels and consonants and then separate by character into an array.
#If our vowels value matches any of the letters passed to it by the 'letter' in the method above, then we use the rotate method
#rotate method makes the value in the (1) index the new first element of the array.so a would become e. b would become c
#The index of our vowels value gets rotated based on the letter it recieves.
#The same is applied for consonants

def next_letter(letter)
  vowels = "aeiou".chars
  consonants = "bcdfghjklmnpqrstvwxyz".chars
  if vowels.include?(letter)
    vowels.rotate(1)[vowels.index(letter)]
  elsif consonants.include?(letter)
  consonants.rotate(1)[consonants.index(letter)]
  else
  next_letter
  end
end

#and finally, we create a hash that stores the data and prints it back for us.
#we make a new hash and set the value of our given name to ''.
#We will apply a loop until 'quit' is typed in.
#the user input gets split by first and last name.
#then name gets capitalized and the letters separated by a space.
# when quit is typed in, we assign our real name(user input) as the key and the results of our undercover method the value.

names_hash = {}
given_name= ''
  until (given_name.downcase == "quit")
  puts "Type in your name to turn it into a secret agent name. Type quit to quit."
  given_name=gets.chomp.split(' ').map!{|name| name.capitalize}.join(" ")
      if (given_name.downcase != "quit")
          puts names_hash[given_name] =  undercover_name(given_name)
      end
  end

  #last but not least, we print out the string id'ing each value of the hash in a sentance than makes sense
names_hash.each {|name,agent_name| puts "#{agent_name}'s real name is #{name}"}