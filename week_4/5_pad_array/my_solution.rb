# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? The input is a minimum number of elements, and the value of the inserted padding.
# What is the output? The output is either an array (if it is equal to or greater than min value, or the output is the array with more spaces to equal the minimum)
# What are the steps needed to solve the problem?
# (1) Declare a nondestructive padding method
# (2) Declare a destructive padding method
# (3) Conditionally add padding if we are under the minimum
# (4) Set the default padding to nil, to the passed value otherwise


# 2. Initial Solution
class Array
	def pad!(minimum, pad_value = nil)
		if self.length < minimum then 
			fill_length = minimum - self.length
			self.fill(pad_value, self.length, fill_length  )
		else
			return self
		end
	end

	def pad(minimum, pad_value = nil)
		if self.length < minimum then 
			fill_length = minimum - self.length
			dup.fill(pad_value, self.length, fill_length  )
		else
			return self.dup
		end
	end
end





# 3. Refactored Solution



# 4. Reflection 

# I learned a lot from this lesson. Specifically, that going up the inheritance hierarchy looking for methods can be huge. 
# I got the destructive method down really quickly, just using array methods that I had used before.
# The non-destructive one was a dead end for me until I found the object.dup method that returns a shallow copy of the object.
# Integrating this into the same language as my first method and returning self.dup gave me the power to operate on the 
# object non destructively! 
#
#
#
#
#
#
#
