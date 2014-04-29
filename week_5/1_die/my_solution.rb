# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: The only input to my die object is the side count
# Output: I need to output a die reference variable with sides between 1 and 6 that can roll 1-6
# # Steps:

# (1) Define class Die
# (2) raise an argument if less than 1
# (3) have sides be variables randomely between 1 and the number of sides
# (4) define the roll function for the die


# 3. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
    raise ArgumentError, 'Sides cannot be less than 1' unless @sides >= 1 
  end
  
  def sides
  	return @sides
  end
  
  def roll
    return 1 + rand(@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6) 

puts die.sides == 6
puts die.roll <= 6





# 5. Reflection 