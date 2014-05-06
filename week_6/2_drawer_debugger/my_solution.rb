# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

end


class Silverware
	attr_reader :type, :clean


	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #@type"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What somehould this return?


fork = Silverware.new("fork") #add some puts statements to help you trace through the code...
fork.eat

fork.clean_silverware

silverware_drawer.add_item(fork)

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise ArgumentError, 'NOPE' unless yield
end

assert {fork.type == "fork"}
assert {fork.clean == true}


# 5. Reflection 
#
# This exercise is largely useful from a practical perspective. I can say that objectively haven just been thrown in the fire at work the last few weeks,
# a large part of developing/coding is reading other peoples codes. First to get familiar with a codebase, but than to debug and improve upon existing code.
# Being able to write driver code for existing code, and to understand the flow and format, and method chains, is a skill that needs to be practiced to be
# widely applicable professionally.
#

