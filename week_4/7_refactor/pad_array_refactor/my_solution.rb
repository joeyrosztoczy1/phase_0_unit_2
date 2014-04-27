# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked (Zach's)
#    What I learned from this solution I really like his use of returning self right away "unless"
#    He also used push which was an alternative to fill

# Copy solution here:

# class Array

# def pad(new_length, value = nil)
# 	return self unless self.length < new_length
# 	new_array = self.dup
# 	(new_length - self.length).times { new_array.push(value) }
# 	return new_array
# end

# def pad!(new_length, value = nil)
# 	return self unless self.length < new_length
# 	(new_length - self.length).times { self.push(value) }
# 	self
# end

# end





# 2. Second Person's solution I liked (jennie's)
#    What I learned from this solution: I liked jennie's use of the concatenate operator <<
# Copy solution here:

# def pad(min_size, pad_value=nil)
#     array=self.dup #dup = clone, makes a copy of whatever its given; self is the object being passed to the method
#     if array.length<=min_size
#         padded=min_size-array.length
#         padded.times do array << pad_value end
# 	end
#     return array
#     end


# def pad!(min_size, pad_value=nil)
# 	if self.length<=min_size
#         padded=min_size-self.length
#         padded.times do self << pad_value end
# 	end
#     return self
# end




# 3. My original solution:

# class Array
# 	def pad!(minimum, pad_value = nil)
# 		if self.length < minimum then 
# 			fill_length = minimum - self.length
# 			self.fill(pad_value, self.length, fill_length  )
# 		else
# 			return self
# 		end
# 	end

# 	def pad(minimum, pad_value = nil)
# 		if self.length < minimum then 
# 			fill_length = minimum - self.length
# 			dup.fill(pad_value, self.length, fill_length  )
# 		else
# 			return self.dup
# 		end
# 	end
# end

# 4. My refactored solution:

# class Array
# 	def pad!(minimum, pad_value = nil)
# 		if self.length < minimum then 
# 			fill_length = minimum - self.length
# 			self.fill(pad_value, self.length, fill_length  )
# 		else
# 			return self
# 		end
# 	end

# 	def pad(minimum, pad_value = nil)
# 		if self.length < minimum then 
# 			fill_length = minimum - self.length
# 			dup.fill(pad_value, self.length, fill_length  )
# 		else
# 			return self.dup
# 		end
# 	end
# end



# 5. Reflection

# Our's all used some completely different methods which was good to see. The more ways you can accomplish the same thing the more
# flexible you can be when you have to deal with specific or constricting demands. It is also great practice to follow code that 
# you have not written and try and understand what exactly it is doing and how each parameter is being passed through etc.

