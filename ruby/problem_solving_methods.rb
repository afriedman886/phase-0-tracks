# Release 0

def search_array(array, value)
  if array.include?(value)
    index = 0
    while index < array.length
      if array[index] == value
      value_index = index
      end
      index += 1
    end
  else value_index = nil
  end
  value_index
end


test = [1, 2, 3]
p search_array(test, 4)

# Release 1

def fib(num)
  fib_array = []
  i = 0
  while i < num
    if i == 0
      fib_array.push(0)
    elsif i == 1
      fib_array.push(1)
    else
      fib_array.push(fib_array[-1] + fib_array[-2])
    end
    i +=1
  end
  fib_array
end

p fib(100)[99] == 218922995834555169026

# Release 2

# Practice array for bubble sort
test_array = [1, 4, 2, 6, 10, 3, 5]
#
# [1, 2, 4, 6, 10, 3, 5]
#
# [1, 2, 4, 6, 3, 10, 5]
#
# [1, 2, 4, 3, 6, 10, 5]
#
# [1, 2, 3, 4, 6, 10, 5]
#
# [1, 2, 3, 4, 6, 5, 10]
#
# [1, 2, 3, 4, 5, 6, 10]

# Bubble Sort

# Take an array as an argument
def bubble_sort(array)

  # Set a variable that equals the length of the array
  n = array.length

  # Create a loop that will stop once no more items in the array have been swapped
  loop do

    # Set initial value of swapped to false
    swapped = false

    # Go through the array, starting at index 0
    (n-1).times do |i|

      # Compare item at index and the next item
      if array[i] > array[i+1]

        # If item at index is greater than the next one, swap them and set swapped to true
        array[i], array[i+1] = array[i+1], array[i]

        # If swapped equals true, go back to beginning of array and loop again, starting at index 0
        swapped = true
      end
    end

    # If loop is completed and swapped is equal to false (throughout the whole loop), then break
    break if not swapped
  end

  # Return array (it will be sorted in ascending order)
  array
end


p bubble_sort(test_array)
