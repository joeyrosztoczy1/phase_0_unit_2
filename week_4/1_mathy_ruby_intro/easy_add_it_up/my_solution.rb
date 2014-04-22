# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# I need to define a method called total.
# total should take a single argument as input
# total should sum up the contents of an integer array
# I need to define a method called sentence_maker
# sentence_maker should accept a single argument
# it should make an array of strings into a correct sentence.



# 2. Initial Solution - via Ruby Docs

def total (num_array)
	num_array.reduce(:+)
end

def sentence_maker (string_array)
	string_array[0].capitalize!

	last_word = string_array.last 
	
	string_array.pop	

	string_array.join(" ") << " " << last_word << "." 
end



# 3. Refactored Solution



# 4. Reflection 