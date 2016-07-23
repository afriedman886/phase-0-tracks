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
    # Create special rule for consonants that immediately precede a vowel in alphabetical order
    elsif "zdhnt".include?(name_array[i])
      shift << name_array[i].tr('zdhnt', 'bfjpv')
    # Keep space value constant (if provided in argument)
    elsif name_array[i] == " "
      shift << " "
    # Shift all remaining consonant letters to the next consonant in alphabetical order
    else
      shift << name_array[i].next
    end
  i += 1
  end
  # Return the new array as a string, capitalize first & last name
  shift.join('').split(' ').map{|name| name.capitalize}.join(' ')
end

# Driver Code

puts incognito("Felicia Torres")
# Should return "Vussit Gimodoe"

# last name capitalize



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



