# SantaCon Simulator

class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age +=1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer))
  end

end

# Driver Code

#kris = Santa.new("Male", "Black")
#kris.speak
#kris.eat_milk_and_cookies("chocolate chip")
#kris.celebrate_birthday
#puts kris.age
#puts kris.ethnicity
#kris.gender = "N/A"
#kris.get_mad_at("Rudolph")
#puts kris.gender


# santa_hash = {
#   "female" => "Latina",
#   "male" => "Japanese",
#   "gender fluid" => "Black",
#   "bigender" => "French"
# }
#
# new_santas = []
# santa_hash.each do |gender, ethnicity|
#   new_santas << Santa.new(gender, ethnicity)
# end
#
# print new_santas

