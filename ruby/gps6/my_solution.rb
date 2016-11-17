
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

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