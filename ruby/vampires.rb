puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "We're placing orders for garlic bread, would you like some for lunch?"
garlic = gets.chomp
  if garlic == "yes"
    puts "Great, I'm sure you'll love it!"
  elsif garlic == "no"
    puts "Hmm... not a fan of garlic bread, huh?  That's... too bad."
  else puts "I'm sorry, I didn't quite understand.  Would you like some garlic bread (yes/no)?"
    garlic = gets.chomp
  end
puts "Would you like to enroll in our company insurance plan?"
insurance = gets.chomp

