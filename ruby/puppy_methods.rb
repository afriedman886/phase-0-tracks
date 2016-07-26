class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize
    puts "Initializing new puppy instance"
  end

  def speak(number)
    "Woof! " * number
  end

# def speak(number)
#   number.times do
#   puts "Woof!"
# end

  def roll_over
    "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def sit(duration)
    "Sits for #{duration} seconds"
  end

end


# Driver Code ----------

spot = Puppy.new

spot.fetch("ball")

puts spot.speak(3)

puts spot.roll_over

puts spot.dog_years(3)

puts spot.sit(3)


# ------------------------------------------------------

class Gymnast

  def initialize
    puts "Initializing new Gymnast instance"
  end

  def flip(n)
    puts "Did #{n} flips"
  end

  def somersault
    puts "*Does a killer somersault*"
  end

end

total_gymnast = []
50.times do
  total_gymnast << Gymnast.new
end

print total_gymnast


total_gymnast.each do |gymnast|
  gymnast.flip(3)
  gymnast.somersault
end
