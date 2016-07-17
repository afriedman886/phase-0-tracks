puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "We're placing orders for garlic bread, would you like some for lunch? (yes/no)"
garlic = gets.chomp
puts "Would you like to enroll in our company insurance plan? (yes/no)"
insurance = gets.chomp

case
  when (2016 - birth_year) == age && (garlic == "yes" || insurance == "yes")
    puts "Probably not a vampire."
  when (2016 - birth_year) != age && (garlic == "no" || insurance == "no")
    puts "Probably a vampire."
  when (2016 - birth_year) != age && garlic == "no" && insurance == "no"
    puts "Almost certainly a vampire."
  when name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  else puts "Results inconclusive."
end








