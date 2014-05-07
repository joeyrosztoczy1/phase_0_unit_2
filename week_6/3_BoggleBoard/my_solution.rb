# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# (1) Load the boggle board into the game
# (2) Create a method to access elements based on array coordinates
# (3) Need to switch to OO programming-pass the baord into an instance variable and access that way


# 3. Initial Solution
class BoggleBoard

	def initialize(dice_grid)
		@dice_grid = dice_grid
	end
	 
	def create_word(*coords)
		coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
	end

	def get_row(row) 
		return @dice_grid[row]
	end

	def get_column(column)
		return @dice_grid.transpose[column]
	end

	# def get_diagonal(coords1, coords2)
	# 	if @dice_grid[coords1][coords2] != nil then
	# 		return 0..2.collect{ |i|array[i][i] }
	# 	end
	# end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

def assert
	raise ArgumentError, "NOPE" unless yield
end

assert { boggle_board.create_word([1,2],[1,1],[2,1],[3,2]	) == "dock" }
assert { boggle_board.get_column(0) == ["b", "i", "e", "t"] }
assert { boggle_board.get_row(0) == ["b", "r", "a", "e"] }
# assert { boggle_board.get_diagonal([0,0], [1,1]) == ["b", "o", "l", "e"] }


# 5. Reflection 
#
# This was a breakthrough exercise for me in implementing driver test code. I wasn't really buying it, in part because a lot of the time its hard to know what to test for
# because I am figuring out what I want as I code. In this case, however, it allowed for me to easily transition from procedurally programming the board
# to implementing it in an OO format. Specifically, in changing the inputs from my old methods to what was needed for the class and also realizing I need to pass an
# instance variable through the classes.
#
#
#
