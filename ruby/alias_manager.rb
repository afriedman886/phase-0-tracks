# Release 0

# Fake name creator

def incognito(name)
  # Swap first and last name
  # Transform the string into an array
  name_array = name.downcase.split(' ').reverse.join(' ').chars
  # Loop through array to alter each letter value
  # Push each new value to new array: shift
  i = 0
  shift = []
  while i < name_array.length
    # If array value is a vowel, translate to the next vowel in sequence 'aeiou'
    if "aeiou".include?(name_array[i])
      shift << name_array[i].tr('aeiou', 'eioua')
    # Keep space value constant (if provided in argument)
    elsif name_array[i] == " "
      shift << " "
    # Shift all consonant letters to the next in alphabetical order; shift z => a
    else
      shift << name_array[i].tr('a-z', 'b-za')
    end
  i += 1
  end
  # Return the new array as a string
  shift.join('').capitalize
end

# Driver Code

p incognito("Felicia Torres")
# Should return "Vussit Gimodoe"

# last name capitalize

# consonant shift to next consonant (can't be vowel)

# edge cases??


puts "Enter a name to receive a super secret alias identity."
puts "(Type 'quit' when you are satisfied with the alias.)"

alias_collection = {}
loop do
name = gets.chomp
break if name == "quit"
p incognito(name)
alias_collection[name] = incognito(name)
end

alias_collection.each {|name, incognito| puts "#{incognito} is really #{name} in disguise."}



