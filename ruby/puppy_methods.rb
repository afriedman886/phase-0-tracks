#class Puppy
​#
#  def fetch(toy)
#    puts "I brought back the #{toy}!"
#    toy
#  end
​#
#  def initialize
#    p "Initializing new puppy instance"
#  end
​#
#  def speak(number)
#      "Woof!" * number
#  end
​#
##   def speak(number)
##     number.times do
##     puts "Woof!"
##   end
##   end
#  def roll_over
#    "*rolls over*"
#  end
​#
#  def dog_years(number)
#    number * 7
#  end
​#
#  def sit(duration)
#    "sits for #{duration} seconds"
#  end
​#
​#
#end
​#
​#
## Driver Code ----------
​#
#spot = Puppy.new
​#
#p spot.fetch("ball")
​#
#puts spot.speak(3)
​#
#p spot.roll_over
​#
#p spot.dog_years(3)
​#
#p spot.sit(3)


class Gymnast

  def initialize
    p "Initializing new Gymnast instance"
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

p total_gymnast
