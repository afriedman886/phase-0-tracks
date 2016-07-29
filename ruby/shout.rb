# Old code declaration for Shout module

# module Shout
#
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!" + " :)"
#   end
#
# end


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!" + " :)"
  end
end

class Teacher
  include Shout
end

class Parent
  include Shout
end



# Driver Code

# puts Shout.yelling_happily("I am happy")
# puts Shout.yell_angrily("This is the worst day ever")

teacher = Teacher.new
puts teacher.yell_angrily("This assignment was due yesterday")
puts teacher.yelling_happily("Excellent performance on the exam")

parent = Parent.new
puts parent.yell_angrily("Go to your room")
puts parent.yelling_happily("I am so proud of you")