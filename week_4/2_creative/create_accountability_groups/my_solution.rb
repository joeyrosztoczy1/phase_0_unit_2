# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: A long list of all the names in a cohort
# Output: Accountability groups for each of 3 units. Each accountability group is a list of up to 4 names.
# Steps:
# (1) Define a method that takes an array as a paramater
# (2) Have that method split the full array into separate lists of 4 items max each. 
# (3) Push each list into a unit object
# (3) Repeat this 3 times.


# 3. Initial Solution

members = ["Adam Hardy", "Adrian Soghoian", "Ajay Bir Singh", "Alec Ashford", "Alex Mazur", "Alexis Ernst", "Amelia Downs", "Amol Borcar", "Andrew C. Koines, Jr.", 
	"Andrew Principe", "Armen Vartan", "Austin Bourdier","Ben Brostoff"]

def create_acc_groups(members)
	@acc_group_u1 = members.shuffle.each_slice(4).to_a
	@acc_group_u2 = members.shuffle.each_slice(4).to_a
	@acc_group_u3 = members.shuffle.each_slice(4).to_a
end

create_acc_groups(members)


puts @acc_group_u1[0] 	
# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

puts @acc_group_u1.length <= 4
puts true if defined? create_acc_groups == "method"
puts @acc_group_u1[1].is_a?(Array)





# 5. Reflection 



