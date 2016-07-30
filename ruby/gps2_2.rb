# GROCERY LIST GENERATOR

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # add individual items from string to empty hash
  # set default quantity of each item to 1
  # print the list using print method
# output: hash grocery list
$grocery_list = {}

def new_list(list)
  list_arr = list.split(" ")
  list_arr.each { |item|
    $grocery_list[item] = 1
  }
  $grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to hash
# output: hash

def add(item, quantity)
  if $grocery_list.has_key?(item)
    $grocery_list[item] += quantity
  else
    $grocery_list[item] = quantity
  end
  #current_quantity = $grocery_list[item].nil? ? 0 : $grocery_list[item]

  #$grocery_list[item] = current_quantity + quantity
  $grocery_list
end


# Method to remove an item from the list
# input: item name
# steps: delete item from hash
# output: hash

def remove(item)
  $grocery_list.delete(item)
  $grocery_list
end

# Method to update the quantity of an item
# input: item and the revised quantity
# steps: revise quantity of item in hash
# output: hash

def update(item, new_quantity)
  $grocery_list[item] = new_quantity
  $grocery_list
end

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through list and print item and quantity prettily
# output: nothing

def print_list
  $grocery_list.each { |item, quantity| puts "#{item}: #{quantity}"}
end

#Driver Code

p new_list("carrots apples cereal pizza")
p add("bananas", 2)
p add("pizza", 2)
p remove("carrots")
p update("apples", 4)
print_list

#Reflection

#What did you learn about pseudocode from working on this challenge?  I gained a better understanding of what the expected "output" should be when stated in pseudocode.  For example, if the last line of a method is a print statement, I was initially thinking of this as the "output", when really the return value will be nil.

#What are the tradeoffs of using arrays and hashes for this #challenge? Hashes were better suited to storing the full grocery list, since each item was coupled with a quantity value.  Though an array was also useful when converting a string of items into individual hash keys.

#What does a method return? A method returns whatever the final expression evaluates to within the method.  (E.g. as explained above, a final "puts" statement in a method will mean that the method returns a value of "nil.")

#What kind of things can you pass into methods as arguments? You can pass strings, integers, hashes, arrays, and even other methods.

#How can you pass information between methods?  You can call a method within another method to pass information, or you can use one method as an argument for another.

#What concepts were solidified in this challenge, and what concepts are still confusing? I feel better about pseudocode and how to update key/value pairs in a hash.  I could have had my methods interact a bit more by replacing the return value of $grocery_list with the method "print_list" at the end of each of my methods, but honestly for the purpose of the challenge I preferred seeing the data in a hash most of the time.  If I updated this program with the user in mind, I would swap out the hash for the prettier printed statement instead, so that after each update the user would see an easy-to-read grocery list.