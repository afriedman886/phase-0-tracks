client_info = {}
budget = nil
rooms_to_decorate = []

# Collect new client information
puts "Client name:"
client_info[:name] = gets.chomp

puts "Client age:"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:children] = gets.chomp.to_i

puts "What decor theme is the client interested in?"
client_info[:decor] = gets.chomp

puts "Which rooms would the client like to re-decorate?  (Please list rooms one at a time. Type 'done' once all rooms have been listed.)"
loop do
  room = gets.chomp
  break if room == "done"
  rooms_to_decorate << room
end
client_info[:rooms_to_decorate] = rooms_to_decorate

# Assess client's budgetary contraints

until budget == "y" || budget == "n"
puts "Does the client have a specific budget for the project? (y/n)"
  budget = gets.chomp
  if budget == "y"
    client_info[:budget] = true
  elsif budget == "n"
    client_info[:budget] = false
  else puts "I'm sorry, I didn't understand your answer."
  end
end

if budget == "y"
  puts "What is the maximum the client is willing to spend on this project? (Please do not include any symbols)"
  client_info[:max_budget] = gets.chomp.to_i
end



print client_info
