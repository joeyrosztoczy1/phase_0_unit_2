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
	def pad!(minimum, pad_value)
		if self.length < minimum then 
			(minimum - self.length).times do
				self.push(pad_value)
			end
		end
	end
end

num_array = [1,2,3]

num_array.pad!(5, 2)

num_array.length.times do |i|
	puts num_array[i]
end

# 3. Refactored Solution



# 4. Reflection 