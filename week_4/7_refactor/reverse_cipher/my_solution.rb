# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #.zip is taking each letter and merging it over the alphabet rotated 
    # by four so you get an arry of arrays that are essentially a key value pair that can be converted to a hash
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? .a is turning the range of letters into an array
# 2. How does the rotate method work? What does it work on? the rotate method is doing the same thing as my first refactor, essentially a a.push a.shift a series of times
# 3. What is `each_char` doing? it is iterating through each character in the string and passing it through to the block with the if statement
# 4. What does `sample` do? Picks a random special char from spaces and it gets concatenated into the encoded string
# 5. Are there any other methods you want to understand better? #all the ones on here I researched. Enumerables I need to continue to familiarize myself with
# 6. Does this code look better or worse than your refactored solution This is very similar, but better because it uses more compact methods (for rotate I use )
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad? It seems good to my inexperienced eye, the variables are well names, its compact, its 
# easily followable


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

# This exercise was great because it exposed me to a lot of new methods, and the possiblity of what you can do when switching between o
# object types and leveraging the distinct methods available to each. The coolest methods I learnt from this exercise were the .sample to pick
# random elements and how "stacking and merging" two arrays via .zip can create key/hash pairs really easily. Tremendously useful and would
# have saved me a ton of time on my refactoring of the original cipher challenge.

