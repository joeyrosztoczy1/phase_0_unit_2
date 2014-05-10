# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

# class CreditCard

# 	def initialize(account_number)
# 		raise ArgumentError, 'Account number must be 16 digits' unless account_number.to_s.length == 16 
# 		raise ArgumentError, 'Account number must be made of only numbers' unless account_number.is_a? Numeric
# 		@account_number = account_number
# 	end

# 	def check_card
# 		digit_doubler
# 		digit_separator
# 		mod_10
# 	end

# 	# Begin Luhn Algorithm
# 	def digit_doubler
# 		@account_number.split.reverse! 
# 		@account_number.each_index do |index|
# 			if index % 2 == 1 then @account_number[index] = @account_number[index] * 2
# 		end

# 		@account_number.reverse!
# 	end

# 	def digit_separator
# 		@account_number.join.split
# 		@sum = @account_number.inject(:+)
# 	end

# 	def mod_10
# 		if @sum % 10 == 0 then 
# 			return true
# 		else
# 			return false
# 		end
# 	end
	
# end


# Refactored Solution

class CreditCard

	def initialize(account_number)
		@account_number = account_number
		raise ArgumentError, 'Account number must be 16 digits' unless @account_number.to_s.length == 16 
		raise ArgumentError, "LOLOLOL" unless @account_number.is_a? Numeric
	end

	def check_card
		digit_doubler
		digit_separator
		mod_10
	end

	# Begin Luhn Algorithm
	def digit_doubler # Switched middle method to a one liner
		@verify = @account_number.to_s.split.reverse!
		@verify.each_index { |index| @verify[index] = @verify[index] * 2 unless index % 2 != 1 }
		@verify.join.reverse!
	end

	def digit_separator #switched to one line method chain
		@sum = @verify.join.split.inject(:+)
	end

	def mod_10 # switched to one line ternary operator
		@sum % 10 == 0 ? true : false 
	end
	
end





# DRIVER TESTS GO BELOW THIS LINE
# Adjusted driver tests to run assert + some more in depth testing

def assert 
	raise ArgumentError, 'NOPE' unless yield
end


a = CreditCard.new(1234567891234567)

assert { a.method(:initialize).arity == 1 }
assert { a.check_card == false }
assert { a.instance_variable_defined?(:@account_number) }
assert { a.instance_variable_defined?(:@verify) }
assert { a.is_a? CreditCard }
assert { a.methods.length == 59 }




# Reflection 
#
# This was one of the first refactors I did on my own code that I feel like I made some serious improvements on. I believe three factors helped:
# (1) this was an exercise from a week ago so I got to take a fresh perspective on it, (2) I got feedback from an instructor to take me refactors more
# seriously so I searched around for how to condense a lot of the functions I had, and (3) Since this was the last week of our Ruby unit I 
# new a significantly larger amount of syntax and methods to help out, including better defining my asserts and driver code.



