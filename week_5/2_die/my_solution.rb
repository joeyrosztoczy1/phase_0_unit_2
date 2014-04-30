# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: labels, an array of strings!
# Output: the number of sides, and the value of each side which is take from the strings in the array!
# Steps: define the class. Initialize the class. Let it accept an array. raise Arg if input is bad. define class methods roll and sides!


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
    raise ArgumentError, 'Initializing array cannot be empty!' unless @labels[0] != nil 
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


label = Die.new(["1", "three"])

puts label.sides == 2
puts label.roll == "1" || label.roll == "three"



# 5. Reflection 

# This was essentially the same exact exercise as the first die context except exploring built in string and array methods rather
# than numbers. The array.length method is probably the greatest thing ever. Well, so is .sample for this project!
#


