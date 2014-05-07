# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# (1) Create a class PezDispenser to initialize objects that are "pez dispensers". 
# (2) The initalizer should have a combination of flavors and be full to the brim
# (3) It should have a method returning the current amount of pez in the dispenser
# (4) You should be able to take one pez at a time from the dispenser to eat
# (5) Be able to add one pez at a time. Pez should have flavors.
# (6) Be able to return the upcoming flavors in the dispenser


# 3. Initial Solution

class PezDispenser

	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		return @flavors.length 
	end

	def see_all_pez
		return @flavors
	end

	def add_pez(new_flavor)
		@flavors.unshift(new_flavor)
	end

	def get_pez
		@flavors.pop
	end
 
end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise ArgumentError, 'NOPE' unless yield
end



flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


assert { flavors != nil }
assert { super_mario.pez_count == 9 }
assert { super_mario.method(:add_pez).arity == 1 }
assert { super_mario.method(:pez_count).inspect == "#<Method: PezDispenser#pez_count>" }
assert { super_mario.method(:get_pez).owner == PezDispenser }



# 5. Reflection 
#
# This exercise helped me focus on user stories, and what the end user wants and expects. Initially, I had used push and pop,
# but when I imagined myself eating pez I didn't want to eat the pez I had put in last, I would put that in the bottom, so I swtiched
# to "unshift". I also tried to get more creative on the assert by looking up the arity method call, the inspect method call, and the owner method!
#
#
#









