# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Input an initial answer to the game. From their the inputs are the guesses.
# Output: Output whether the guess is too low, too high, or is correct!
# Steps:

# (1) Define the class for the game
# (2) the class accepts a single paramter, answer
# (3) accept input for guesses
# (4) return whether the guess is too high, too low, or correct
# (5) make sure the variables remember the state of solved?


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end
  
  def guess(guess)


  	@guess = guess

    

  	if @guess > @answer then
      @solved = false
  		return :high
  	elsif @guess < @answer then
      @solved = false
  		return :low
  	else
      @solved = true
  		return :correct
  	end
  end 

  def solved?
  	@solved
  end
  # Make sure you define the other required methods, too
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

test = GuessingGame.new(5)

puts test.method(:guess).arity == 1
puts test.guess(6) == :high
puts test.guess(4) == :low






# 5. Reflection 
# The trickiest part of this challenge for me was remembering the state of the last guess. After googling around for a while it seemed like a class
# variable would do the trick, but I am uncomfortable with using it. As I researched more it seems like a very dangerous type of variable to use.
# In this instance it works, but if multiple people had initialized classes it would override guesses.

#UPDATE: I didn't need a class variable to remember state, I just needed to be adjusting true/false values based on the guess and make sure I was
# referencing that instance variable. YAY uncomfortableness ignored! WHAT OUT FOR CLASS VARIABLESSSSSS.







