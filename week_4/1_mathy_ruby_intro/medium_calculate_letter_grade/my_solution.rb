# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# The input is an array of grades
# The output is a gpa based off of percentile scores
# To solve the problem I need to
# 1. define the method to get the grade
# 2. Average out the test scores
# 3. Convert the average to a letter grade!



# 2. Initial Solution

def get_grade(scores)

	#Find out the average of the scores

	score_sum = scores.reduce(:+)
	total_scores = scores.length
	average_score = score_sum / total_scores

	#translate average into a letter grade

	grade = case average_score
	when 90...100 then "A"
	when 80..90 then "B"
	when 70..80 then "C"
	when 60..70 then "D"
	when 0..60 then "F"
	end
	
	return grade
end


# 3. Refactored Solution



# 4. Reflection 