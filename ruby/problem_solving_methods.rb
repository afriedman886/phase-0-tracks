# Release 0

# Array (value -> index) search

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
p search_array(test, 2)
p search_array(test, 4)

# Release 1

# Fibonacci sequence generator

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

p fib(8)
p fib(100)[99] == 218922995834555169026

# Release 2

test_array = [1, 4, 2, 6, 10, 3, 5]

# Visual practice for bubble sort method

# [1, 4, 2, 6, 10, 3, 5]

# [1, 2, 4, 6, 10, 3, 5]

# [1, 2, 4, 6, 3, 10, 5]

# [1, 2, 4, 3, 6, 10, 5]

# [1, 2, 3, 4, 6, 10, 5]

# [1, 2, 3, 4, 6, 5, 10]

# [1, 2, 3, 4, 5, 6, 10]

# Bubble Sort

# Take an array as an argument
def bubble_sort(array)
  # Set a variable that equals the length of the array
  n = array.length
  # Create a loop that will break once no more items in the array need to be swapped (i.e. the array is in ascending order)
  loop do
    # Set initial value of swapped to false
    swapped = false
    # Loop through the array, starting at index 0.
    # Run loop (n-1) times, i.e. run for all index values
    (n-1).times do |i|
      # Compare adjacent array values. If first value is greater than the next value, swap values and set swapped = true
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    # If swapped = true, go back to beginning of array and perform this loop again
    # If swapped = false, then break loop
        # If swapped = false, this means that for all instances of i, between the values of 0 and (n-1), that all adjacent value pairs in the array are in ascending order
    break if not swapped
  end
  # Return array (it will now be sorted in ascending order)
  array
end


p bubble_sort(test_array)
