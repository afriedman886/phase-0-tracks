def vacation
  puts "Hard to choose where to go!"
  yield("San Francisco", "Chicago")
end


vacation { |city1, city2| puts "But I would like to go to either #{city1} or #{city2}." }


animals = ["elephant", "zebra", "lion", "hippo"]

hollywood = {
  :die_hard => "Bruce Willis",
  :indiana_jones => "Harrison Ford",
  :forrest_gump => "Tom Hanks",
  :iron_man => "Robert Downey Jr."
}

puts "Before .each"
p animals

animals.each { |animal| puts animal }

puts "After .each"
p animals


puts "Before .map!"
p animals

animals.map! { |animal| animal.capitalize }

puts "After map!"
p animals