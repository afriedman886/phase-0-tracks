# INTERIOR DESIGN - NEW CLIENT INTAKE FORM

client_info = {}
rooms_to_decorate = []
budget = nil

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
  room = gets.chomp.downcase
  break if room == "done"
  rooms_to_decorate << room
end
client_info[:rooms_to_decorate] = rooms_to_decorate

# Assess client's budgetary contraints

until budget == "y" || budget == "n"
puts "Does the client have a specific budget for the project? (y/n)"
  budget = gets.chomp.downcase
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

# Verify client information is correct

puts client_info

puts "Would you like to make any changes? (Type 'none' if information is accurate.)"
errors = gets.chomp

if errors != "none"
  puts "Which field name would you like to update?"
  field_name = gets.chomp.to_sym

  if field_name != :rooms_to_decorate && field_name != :budget
    puts "Please type the revised information for this field:"

    # Client info corrections - data type: string
    if field_name == :name || field_name == :decor
      client_info[field_name] = gets.chomp

    # Client info corrections - data type: integer
    else field_name == :age || field_name == :children || field_name == :max_budget
      client_info[field_name] = gets.chomp.to_i
    end

  # Client info corrections - data type: boolean
  elsif field_name == :budget
      client_info[:budget] = !client_info[:budget]

  # Client info corrections - data type: array
  else puts "Would you like to add (a) or remove (r) an exisiting room?"
    room_edit = gets.chomp.downcase
    if room_edit == "a" || room_edit == "add"
      puts "What room would you like to add?"
      rooms_to_decorate << gets.chomp
    else room_edit == "r" || room_edit == "remove"
      puts "What room would you like to remove?"
      rooms_to_decorate.delete(gets.chomp)
    end
  end

puts client_info
end


