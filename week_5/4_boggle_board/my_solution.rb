# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# (1) Load the boggle board into the game
# (2) Create a method to access elements based on array coordinates

# Initial Solution

 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
p create_word(boggle_board, [0,0], [0,1], [1,1]) == "bro"


# Reflection 

#I guess I was confused as to what this part wanted, since the read me provided the code to complete it?
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Define method that accepts an input to find a row, return each element in that array

# Initial Solution

def get_row(board, row) 
	return board[row]
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 0) == ["b", "r", "a", "e"]


# Reflection 

# I was a little uncertain on what this challenge wanted again, if it was purely to access the array (which seems to easy compared to other challenges)


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Need to define a method where user inputs a column on the board and we return the whole thing.
# Define method, flip array (smash it vertically-- I know there is a method somewhere for this), RETURN!

# Initial Solution

def get_column(board, column)
	return board.transpose[column]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_column(boggle_board, 0) == ["b", "i", "e", "t"]
# Reflection 

#Same with this one. I am wondering if we are supposed to also implement methods to make sure the coordinates follow the rules of the game
# ie. you can't pick two on separate sides of the board?





