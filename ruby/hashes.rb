# INTERIOR DESIGN - NEW CLIENT INTAKE FORM

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

until budget == "y".downcase || budget == "n".downcase
puts "Does the client have a specific budget for the project? (y/n)"
  budget = gets.chomp
  if budget == "y".downcase
    client_info[:budget] = true
  elsif budget == "n".downcase
    client_info[:budget] = false
  else puts "I'm sorry, I didn't understand your answer."
  end
end

if budget == "y".downcase
  puts "What is the maximum the client is willing to spend on this project? (Please do not include any symbols)"
  client_info[:max_budget] = gets.chomp.to_i
end

# Verify client information is correct

puts client_info

puts "Would you like to make any changes? (Type 'none' if information is accurate.)"
errors = gets.chomp

if errors != "none"
puts "Which field name would you like to update?"
field_name = gets.chomp.to_sym
end

if field_name != :rooms_to_decorate
puts "Please type the revised information for this field:"

# Client info corrections - data type: string
if field_name == :name || field_name == :decor
  client_info[field_name] = gets.chomp

# Client info corrections - data type: integer
elsif field_name == :age || field_name == :children || field_name == :max_budget
  client_info[field_name] = gets.chomp.to_i

# Client info corrections - data type: boolean
else field_name == :budget
  if client_info[:budget] == true
    client_info[:budget] = false
  else client_info[:budget] == false
    client_info[:budget] = true
  end
end
end




