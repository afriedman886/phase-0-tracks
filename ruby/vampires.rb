puts "How many new employees need to be processed?"
new_employees = gets.chomp.to_i

processed_new_employees = 0

until processed_new_employees == new_employees

  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  puts "We're placing orders for garlic bread, would you like some for lunch? ( yes/no)"
  garlic = gets.chomp
  puts "Would you like to enroll in our company insurance plan? (yes/no)"
  insurance = gets.chomp

  vampire_status = nil

    if (2016 - birth_year) == age && (garlic == "yes" || insurance == "yes")
      vampire_status = "Probably not a vampire."
    end

    if (2016 - birth_year) != age && (garlic == "no" || insurance == "no")
      vampire_status = "Probably a vampire."
    end

    if (2016 - birth_year) != age && garlic == "no" && insurance == "no"
      vampire_status = "Almost certainly a vampire."
    end

    if name == "Drake Cula" || name == "Tu Fang"
      vampire_status = "Definitely a vampire."
    end

    if vampire_status == nil
       vampire_status = "Results inconclusive."
    end

  puts "Vampire status: #{vampire_status}"

  processed_new_employees += 1
end
















