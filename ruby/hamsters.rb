
  puts "What is the hamster's name?"
  hamster_name = gets.chomp
  puts "What is the volume level from 1-10?"
  volume_level = gets.chomp
  volume = volume_level.to_i
  puts "What is the fur color?"
  fur_color = gets.chomp
  puts "Is the hamster a good candidate for adoption?"
  adoption = gets.chomp
  puts "What is the hamster's estimated age?"
  age = gets.chomp
  if age.empty?
    age = nil
  end
  puts "The hamster's name is #{hamster_name}. The volume level is #{volume}. The fur color is #{fur_color}. If you were to ask if the hamster is a good candidate for adoption, then the answer would be #{adoption}. The age of the hamster is #{age} years old!"