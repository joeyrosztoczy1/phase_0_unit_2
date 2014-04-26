# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# As a user, I want to
# - Create a generic template
# - Use the generic template (without overwriting it)
# - Input a title into the template
# - Identify and pass in a person/place/topic into the template
# - Input an important date into the template
# - Input my thesis statement into the template
# - Output my finished template onto the screen

# 2. Pseudocode

# Input: Title, (Person/place/thing), date, thesis statement
# Output: A finished template report
# Steps:

# Step 1: Declare a template, title, noun, date, and thesis statement
# Step 2: Push the template into a new variable
# Step 3: Concatenate the title template noun date and thesis into the new variable
# Step 4: Output the new variable onto the screen


# 3. Initial Solution

template = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id mattis nulla. Pellentesque habitant morbi 
	tristique senectus et netus et malesuada fames ac turpis egestas. Nam massa neque, vehicula ut erat nec, tincidunt rutrum 
	diam. Suspendisse lobortis id velit ac congue. Suspendisse ac porttitor lorem. Quisque porta nunc ut dignissim porta. 
	Donec quis suscipit nisl. Curabitur ornare fringilla neque interdum suscipit. Phasellus id pellentesque est. Sed bibendum 
	iaculis lectus, et auctor nisi rhoncus et.

	Aliquam erat volutpat. Maecenas nec est lectus. Ut ornare leo nisl, in luctus leo aliquam in. Ut suscipit bibendum 
	tristique. Fusce quam quam, ultricies eget sem vitae, feugiat rhoncus elit. Phasellus massa mi, pharetra non bibendum a, 
	vulputate eu dui. Proin eget tempus sem. Sed semper augue felis, quis consectetur turpis malesuada nec."

	def homework_cheater (template, title, noun, date, thesis)
		homework_cheater_array = template.split
		
		homework_cheater_array.insert(5, title)
		homework_cheater_array.insert(19, noun)
		homework_cheater_array.insert(30, date)
		homework_cheater_array.insert(44, thesis)

		homework_cheater_array.join(" ")
		puts homework_cheater_array
	end


# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

puts template == !nil 
puts template_1 == "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id mattis nulla. Pellentesque habitant morbi 
	tristique senectus et netus et malesuada fames ac turpis egestas. Nam massa neque, vehicula ut erat nec, tincidunt rutrum 
	diam. Suspendisse lobortis id velit ac congue. Suspendisse ac porttitor lorem. Quisque porta nunc ut dignissim porta. 
	Donec quis suscipit nisl. Curabitur ornare fringilla neque interdum suscipit. Phasellus id pellentesque est. Sed bibendum 
	iaculis lectus, et auctor nisi rhoncus et.

	Aliquam erat volutpat. Maecenas nec est lectus. Ut ornare leo nisl, in luctus leo aliquam in. Ut suscipit bibendum 
	tristique. Fusce quam quam, ultricies eget sem vitae, feugiat rhoncus elit. Phasellus massa mi, pharetra non bibendum a, 
	vulputate eu dui. Proin eget tempus sem. Sed semper augue felis, quis consectetur turpis malesuada nec."




# 5. Reflection 


