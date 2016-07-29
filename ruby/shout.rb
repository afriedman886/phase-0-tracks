module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!" + " :)"
  end

end

# Driver Code

# puts Shout.yelling_happily("I am happy")
# puts Shout.yell_angrily("This is the worst day ever")