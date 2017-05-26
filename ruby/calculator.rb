
def calculate(integer1, operator, integer2)
  integer1 = integer1.to_i
  operator = operator.to_s
  integer2 = integer2.to_i
  calculations = []
  if operator == "+"
    results = integer1 + integer2
    p results
    calculations << "#{integer1} + #{integer2} = #{results}"
  elsif operator == "-"
    results = integer1 - integer2
    p results
    calculations << "#{integer1} - #{integer2} = #{results}"
  elsif operator == "*"
    results =integer1 * integer2
    p results
    calculations << "#{integer1} * #{integer2} = #{results}"
  elsif operator == "/"
    results =integer1 / integer2
    p results
    calculations << "#{integer1} / #{integer2} = #{results}"
  elsif operator == "o"
  p calculations
  else
    "Invalid Entry"
  end

end

=begin
calculate(4, "+", 5)
calculate(4, "-", 5)
calculate(4, "*", 5)
calculate(4, "/", 5)
=end


user_input = ""

until user_input == "done"
  puts "Type your calculation. Type done to exit"
  user_input = gets.chomp

  calculate(user_input[0], user_input[1], user_input[2])
end
