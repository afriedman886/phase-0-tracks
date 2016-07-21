# Release 0 - write a method that takes a block

def vacation
  puts "Hard to choose where to go!"
  yield("San Francisco", "Chicago")
end

vacation { |city1, city2| puts "But I would like to go to either #{city1} or #{city2}." }


# Release 1 - use each, map and map!

animals = ["elephant", "zebra", "lion", "hippo"]

hollywood = {
  "Die Hard" => "Bruce Willis",
  "Indiana Jones" => "Harrison Ford",
  "Forrest Gump" => "Tom Hanks",
  "Iron Man" => "Robert Downey Jr.",
  "Philadelphia" => "Tom Hanks"
}

# .each used on array
puts "Array before .each"
p animals

animals.each { |animal| puts animal }

puts "Array after .each"
p animals

# .map! used on array
puts "Array before .map!"
p animals

animals.map! { |animal| animal.capitalize }

puts "Array after map!"
p animals

# .each used on hash
puts "Hash before .each"
p hollywood

hollywood.each { |movie, actor| puts "#{actor} was great in #{movie}!" }

puts "Hash after .each"
p hollywood


# Release 2 - use the documentation

animals = ["elephant", "zebra", "lion", "hippo"]

hollywood = {
  "Die Hard" => "Bruce Willis",
  "Indiana Jones" => "Harrison Ford",
  "Forrest Gump" => "Tom Hanks",
  "Iron Man" => "Robert Downey Jr.",
  "Philadelphia" => "Tom Hanks"
}

# Delete items that meet condition

puts "After using .delete_if method:"

p animals.delete_if { |animal| animal.length < 5 }
p hollywood.delete_if { |movie, actor| movie.length < 10 }


# Filter items that meet condition

animals = ["elephant", "zebra", "lion", "hippo"]

hollywood = {
  "Die Hard" => "Bruce Willis",
  "Indiana Jones" => "Harrison Ford",
  "Forrest Gump" => "Tom Hanks",
  "Iron Man" => "Robert Downey Jr.",
  "Philadelphia" => "Tom Hanks"
}

puts "After using .select method:"

p animals.select { |animal| animal[0] == "z" }
p hollywood.select { |movie, actor| actor == "Tom Hanks" }


# Additional filter method

puts "After using .keep_if method:"

p animals.keep_if { |animal| animal.chr == "h" }
p hollywood.keep_if { |movie, actor| actor == "Robert Downey Jr." }


# Remove items until condition in block evaluates to false, then stops

animals = ["elephant", "zebra", "lion", "hippo"]

hollywood = {
  "Die Hard" => "Bruce Willis",
  "Indiana Jones" => "Harrison Ford",
  "Forrest Gump" => "Tom Hanks",
  "Iron Man" => "Robert Downey Jr.",
  "Philadelphia" => "Tom Hanks"
}

puts "After using .drop_while for array, and .reject for hash:"

p animals.drop_while { |animal| animal.length > 4 }
p hollywood.reject { |movie, actor| actor[0] == "B" }


