# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? The input is an integer (that is all LOL)
# What is the output? The output is the integer formatted with proper commas
# What are the steps needed to solve the problem? 
# (1) define a method that accepts an integer
# (2) insert commas every three characters
# (3) output the result


# 2. Initial Solution

def separate_comma(int)
	return int.to_s.split("").reverse.each_slice(3).map { |e| e.join("").reverse  }.reverse.join(",")
end

separate_comma(100000)




# 3. Refactored Solution



# 4. Reflection 