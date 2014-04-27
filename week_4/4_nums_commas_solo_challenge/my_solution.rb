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
	return int.to_s.split("").reverse.each_slice(3).map { |i| i.join("").reverse  }.reverse.join(",")
end





# 3. Refactored Solution



# 4. Reflection 
#
# I hugely enjoyed the logic challenge in this exercise. It was equally awesome because it was hard to find any documentation etc on the outcome I wanted via
# google because everyone uses regex's when they want to achieve a similar outcome. I also enjoyed it because it was not one of the challenges that I
# struggled for hours on, it came through relatively quick. I knew I wanted to use the each_slice, because I had used that method earlier in Phase 0.
# The next step for me was to figure out how to count to the right indexes, and I quickly realized the only way to do it was from spinning around 
# the contents, because than I could always be sure I was landing at a multiple of 3 with each slice. I also figured out one of my biggest general 
# challenges in coding so far: defining local variables and trying to access them out of scope. My original try had me setting a bunch of variables, but
# simply returning the answer has been much cleaner and less frustrating!
