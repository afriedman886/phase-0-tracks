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


