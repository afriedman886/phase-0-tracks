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