puts "What is your name?"
vampire_name = gets.chomp

puts "How old are you in years?"
vampire_age = gets.chomp
age = vampire_age.to_i
  if age>100
    age = false
  else age<100
    age = true
end

puts "What year were you born?"
year = gets.chomp
year_born = year.to_i
  if year_born > 1917
    year_born = true
  else year_born < 1917
    year_born = false
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
gb_pref = gets.chomp

  if gb_pref == "yes"
    gb_pref = true
  else gb_pref == "no"
    gb_pref = false
  end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

if insurance == 'yes'
  insurance = true
else insurance == 'no'
  insurance = false
end

if age && gb_pref || insurance
  puts "Probably not a vampire"

elsif !age && !gb_pref && !insurance
  puts "Almost certainly a vampire"

elsif !age && (!insurance || !gb_pref)
  puts "Probably a vampire"

elsif vampire_name == "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire"

else
  print "Results inconclusive"

end



