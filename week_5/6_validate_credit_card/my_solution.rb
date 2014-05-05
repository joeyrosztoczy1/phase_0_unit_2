# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 16 digit credit card account number. Anything else should through an exception.
# Output: Boolean estimating the validity of any account number, true being valid false being invalid.
# Steps: Create a method #check_card that accepts the account number. It should use the Luhn algorithm to check for validty.
# (1) Start with the second to last digit double every other digit all the way to the first digit.
# (2) Break apart doubled digits that are 2 digits (i.e 10)
# (3) Sum the string of digits
# (4) If the sum is a multiple of ten, return valid 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

	def initialize(account_number)
		raise ArgumentError, 'Account number must be 16 digits' unless account_number.to_s.length == 16 
		raise ArgumentError, 'Account number must be made of only numbers' unless account_number.is_a? Numeric
		@account_number = account_number
	end

	def check_card
		digit_doubler
		digit_separator
		mod_10
	end

	# Begin Luhn Algorithm
	def digit_doubler
		@account_number.split.reverse! 
		@account_number.each_index do |index|
			if index % 2 == 1 then @account_number[index] = @account_number[index] * 2
		end

		@account_number.reverse!
	end

	def digit_separator
		@account_number.join.split
		@sum = @account_number.inject(:+)
	end

	def mod_10
		if @sum % 10 == 0 then 
			return true
		else
			return false
		end
	end
	
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

a = CreditCard.new(1234567891234567)

p a.initialize.arity == 1
p a.check_card == true



# 5. Reflection 
