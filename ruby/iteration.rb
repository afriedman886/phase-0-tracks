def vacation
  puts "Hard to choose where to go!"
  yield("San Francisco", "Chicago")
end


vacation { |city1, city2| puts "But I would like to go to either #{city1} or #{city2}." }
