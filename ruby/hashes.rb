=begin
The Interior Designer Questionaire:
Client's Name?
Client's Age?
Number of Children?
Decor Theme?
Likes Interior Design?
=end

puts "The Interior Designer Questionaire"

puts "Client's Name"
client_name = gets.chomp

puts "Client's Age"
client_age = gets.chomp
age = client_age.to_i

puts "Number of Children"
number_children = gets.chomp
children = number_children.to_i

puts "Decor Theme?"
theme = gets.chomp


questionaire = {
  "name" => client_name,
  "age" => age,
  "children" => children,
  "theme" => theme
}

p questionaire

puts "Would you like to update any of your answers? If yes, please type in the key you wish to update. If no, type none."
key_update = gets.chomp

 if key_update == "none"
   p questionaire
 else
   puts "Type the updated value"
updated_value = gets.chomp
questionaire[key_update] = updated_value
p questionaire
 end



=begin
  Ask if user would like to update any of the inputs. if so, type the key to update. set the key update as a variable.
  if user types none, end the loop and print the questionaire
    if the user types a key then ask to type the updated value. set the updated value to a variable.
      then take the questionaire array's key  and set it equal to the updated value
=end