# Method to create a list
#Define a method create_list
def create_list(items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#split the string
  items = items.split

#Make empty hash {}
  grocery_list = {}
#Iterate through the array, with each item in the array = 1
  items.each do |item|
    grocery_list[item] = 1
  end
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  p grocery_list
  #print list

end
grocery_list = create_list("carrots apples cereal pizza")
# output: [what data type goes here, array or hash?]


# Method to add an item to a list
#Define a new method add_item, 3 parameters
def add_item(list, item, quantity=1)
# input: list, item name, and optional quantity
#Type out the hash[item] type the quantity
  list[item] = quantity
#type out the name of the hash again (returning it)
# steps:
# output: updated hash with the addition
  p list
#argument = add_item. In parenthesis hash, "item", #quantity.
end
add_item(grocery_list, "Pears")


# Method to remove an item from the list
#Define a method remove_item
def remove_item(list, item)
# input: list, item, quantity
# steps: type the hash name, then '.delete', then in parenthesis, the key you would like to delete out (item name)
  list.delete(item)
  p list
# output: new grocery list hash, minus the item you deleted
end
remove_item(grocery_list, "Pears")


# Method to update the quantity of an item
#Define a update_item method
def update_item(list, item, quantity)
# input:list, item, quantity
# steps: type the hash in brackets the item and set it equal to the quantity
  list[item] = quantity
  p list
# output: the grocery list with the updated quantity amount
end
update_item(grocery_list, "carrots", 3)

# Method to print a list and make it look pretty
# input: the grocery list hash
def print_list(list)

  list.each do |key, value|
    p "My grocery list includes #{key}:#{value}"
  end
end
print_list(grocery_list)
# steps: iterate each item of the grocery list to print a sentence"
# output: a printed out sentence

=begin
REFLECT
What did you learn about pseudocode from working on this challenge? Psuedocoding is a great way to plan out your coding in an easy to read format.
What are the tradeoffs of using arrays and hashes for this challenge?
Arrays are good if there isn't as much info. Hashes are good if there is information that corresponds to other information
What does a method return?
A method returns the last line of code executed.
What kind of things can you pass into methods as arguments?
Strings, booleans, integers, variables
How can you pass information between methods?
setting the value of the output of one method into the argument of another method
What concepts were solidified in this challenge, and what concepts are still confusing?
switching between methods was more solidified. i don't thin i have any concepts confusing at the moment.

=end