# Virus Predictor

# I worked on this challenge with: Stephanie Lane.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# "require_relative" allows you to access a Ruby doc with a specified load_path (using "require" doesn't require load_path)
#

require_relative 'state_data'

class VirusPredictor

 #takes in 3 parameters which end up being instance variables for
 #remainder of class.
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

 #returns results of both methods.
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

 private

 #returns sentence with state and number of deaths in outbreak after
 #going through conditional.
 def predicted_deaths
   # predicted deaths is solely based on population density
   number_of_deaths =
   case @population_density
     when @population_density >= 200 then (@population * 0.4).floor
     when @population_density >= 150 then (@population * 0.3).floor
     when @population_density >= 100 then (@population * 0.2).floor
     when @population_density >= 50 then (@population * 0.1).floor
     else (@population * 0.05).floor
   end

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

 #calculating speed according to state's population density.
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.

   speed = 0.0
   case @population_density
     when @population_density >= 200 then speed += 0.5
     when @population_density >= 150 then speed += 1
     when @population_density >= 100 then speed += 1.5
     when @population_density >= 50 then speed += 2
     else speed += 2.5
   end

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


STATE_DATA.each do |state, population|
 data = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
 data.virus_effects
end



#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The syntax for the state/population pair uses hash rockets and a string value as each key.  This is useful because the key is printed in a string when the virus_effects method is called.  The population data uses symbols for each key (and utilizes the symbol shortcut, i.e. not requiring the hash rocket).  This helps the program load faster because only two symbols (with unique id numbers) are required for the hash.

# What does require_relative do? How is it different from require?
# Require_relative allows you to access a Ruby doc with a specified load path (using "require" doesn't require a specific load path, it will pull from the global LOAD_PATH where Ruby info is stored).

# What are some ways to iterate through a hash?
# Hashes can be iterated through using .each (as well as .each_key, .each_value, and .each_pair), .delete_if, .keep_if, .reject, and .select

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables in the parameters were nowhere to be found in the actual method code (due to instance variables being used instead).  Since instance variables were sufficient, no parameter was needed.

# What concept did you most solidify in this challenge?
# I feel better about iteration after completing this challenge, and I was also happy to have a chance to play around with cases, which I feel like we briefly touched on in a prior lesson, but never spent a lot of time practicing.  In this situation, a case statement seemed like a cleaner way to represent multiple if/elsif statements.  So I feel I better understand when it's preferable to use one of these formats over the other.
