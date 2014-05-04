# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# Require relative allows you to load another file not in the current document. Require relative in this example loads the file state_data,
# which allows us to reference all of the information in that particular file. It as a part of the kernel method. It differs from the Require
# method in that it takes a string as an argument, references the file faster than the name via require, and makes it easy to backtrack to the
# particular file you are loading. 
#
require_relative 'state_data'

class VirusPredictor

  # This is the initialize method that will initialize the rference variables for class Virus Predicotr. It takes the state and its corresponding 
  # as input.

  def initialize(state_data, state)
    @state_data = state_data
    @state = state
  end

  # This is defining a method virus_effects that produces predicted deaths and the speed of spread of the virus. It defines the inputs
  # that have an impact on these values.

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

   def national_report(state_data)
    state_data.each_key do |value|
      predicted_deaths(@population_density, @population, @state)
      speed_of_spread(@population_density, @state)
    end
  end

  private  # The private designation in Ruby means that the following methods cannot be explicitly called i.e. foo.bar(x) if bar was private this would
           # not work.

  # predicted_deaths takes the necessary inputs and runs the calculations on them to predict the deaths by the virus. Depending on the magnitude of the 
  # population density it will take the population and multiply it by a constant. It also takes state as an argument to reference in the output string.       

  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed_of_spread takes population_density and state as inputs. Its output is defined in months. It calculates the speed by applying a 
  # constant based on the magnitude of the population_density and then prints out that value.

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects