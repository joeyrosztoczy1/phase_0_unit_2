# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield #assert is a method being passed a block below that gets invoked by yield
end

name = "bettysue"
assert { name == "bettysue" } #We are passing a block into assert that says raise an exception unless name == "bettysue"
# assert { name == "billybob" } #We are passing a block into assert that says raise an exception unless name == "billybob"

# 2. Pseudocode what happens when the code above runs

# We define a method assert that raises an exception unless it is passed a block that evaluates to true.

# 3. Copy your selected challenge here

def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []

# REFACTORED FUNCTION
    rotate = 22 # 22 is equivelant to -4, the same rotation as the hash 

    cipher = ('a'..'z').to_a

    input.each do |x|

      found_match = false

      cipher.each_index do |y|

        if x == cipher[y] 

          rotate.times do 

            cipher.push cipher.shift

          end
            
          decoded_sentence << cipher[y]

          found_match = true

          break

      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        #because these symbols do not translate in our cipher we want to add a space whenever we come across these
        decoded_sentence << " "
        #see above 
        found_match = true
        #found_match is true since we were able to translate the symbols into something we can understand
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does " (0..9).to_a " do?
        #to_a turns the range into an array => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]. Here we are asking if this array includes x
        decoded_sentence << x
        #I guess it's assumed that if the include? is true, run the code following it
        found_match = true
        #I DONT KNOW why this is here, why did we need to turn 0..9 into an array?
        break
      end
    end
    if not found_match # What is this looking for?
      #since found_match = false, if not found_match means if found_match= true 
      decoded_sentence << x
      #add x to decoded_sentence
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end
  return decoded_sentence # What is this returning?
end

# Driver Code:

puts north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"



puts north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."

puts north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"

puts north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."

puts north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

puts north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"


# 4. Convert your driver test code from that challenge into Assert Statements


assert {north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."}
assert {north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"}
assert {north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."}
assert {north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"}
assert {north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"}




# 5. Reflection

#I like how simple the assert method is to implement in writing driver code. I also like that it breaks us at a particular line number, this seems like it may be an incrementally
# better approach to testing/driver code than just using puts all the time. Using asert, I am sure you could iterate through testing etcetera and make the code more DRY. Hopefully it helps
# make RSpec more familiar, but the main lesson I learned from this challenge was reviewing blocks. I think it is interesting, you can essentially pass a block at any method in ruby (that is my understanding anyway)
# and if you use the yield function it will call the block and return the result.
