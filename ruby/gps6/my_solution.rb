
# Virus Predictor

# I worked on this challenge [with Dharini].
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#

#require relative loads another file of given name
#require_relative complements the builtin method require 
# by allowing you to load a file that is relative to the file containing the require_relative statement.
# require relative does more narrow search than require

require_relative 'state_data'
# require ('./state_data.rb')

class VirusPredictor
 
  # Initializing the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #it calls predicted_death and speed of spead methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  #Determines number of people died based on population density
  def predicted_deaths
    death_rate = case @population_density
      when 0...50 then 0.05
      when 50...100 then 0.1
      when 100...150 then 0.2
      when 150...200 then 0.3
      else 0.4
    end
    number_of_deaths = (@population * death_rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #Determines speed of spread based on population density
  def speed_of_spread #in months
    speed = 0.0
    speed_rate = case @population_density
      when 0...50 then 2.5
      when 50...100 then 2
      when 100...150 then 1.5
      when 150...200 then 1
      else 0.5
    end
    speed = speed +speed_rate
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, details|
    state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    state.virus_effects
end

#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The two different hash syntaxes in the state_data file are the rocket operator (=>) and colon operator (:). The main differenve between the two is that the states are referred to as strings, and thus the colon operator can't be applied to them, since they need to be symbols like population_density (lowercase and not contained in quotation marks).

What does require_relative do? How is it different from require?
require_relative is used to call/load an entire file into another, and is a way of combining different behaviours into a single execution, like how CSS can be linked to HTML documents. The main difference between require_realtive and require is where the code is executed from. require uses the current directory you run the program from as the starting point, while require_relative uses the direction where the program itself resides. So with require, you would have the run the program from the same directory, where with require_relative you could be in any directory and run the code without experiencing an issue.

What are some ways to iterate through a hash?
One way to iterate through a hash is to use the .each built-in block method, where you can run through the keys and values. This is usually preferred, because it is simplest, but an alternative may be to use a while or until loop to perform the function until it reaches a certain number of times done.

When refactoring virus_effects, what stood out to you about the variables, if anything?
What stood out was the fact that they were making use of instance variables, which were applied to all of the methods. This made it simple to refactor, because all that needed to be done was remove those from the arguments of the two methods linked to virus_effects, as well as in that method itself. 

What concept did you most solidify in this challenge?
The concepts that were solidified in this challenge bere the idea of using a block to iterate over a hash, as well as the idea of using case as a substitute for if statements. It seems to be an alternative, espeically when ranges of integers are involved.
=end