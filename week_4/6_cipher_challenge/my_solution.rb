def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  # cipher = {"e" => "a", # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
  #           "f" => "b", # the best data structure for this problem? What are the pros and cons of hashes?
  #           "g" => "c",
  #           "h" => "d",
  #           "i" => "e",
  #           "j" => "f",
  #           "k" => "g",
  #           "l" => "h",
  #           "m" => "i",
  #           "n" => "j",
  #           "o" => "k",
  #           "p" => "l",
  #           "q" => "m",
  #           "r" => "n",
  #           "s" => "o",
  #           "t" => "p",
  #           "u" => "q",
  #           "v" => "r",
  #           "w" => "s",
  #           "x" => "t",
  #           "y" => "u",
  #           "z" => "v",
  #           "a" => "w",
  #           "b" => "x",
  #           "c" => "y",
  #           "d" => "z"}

    rotate = 22

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

  # input.each do |x| # What is #each doing here? 
  #   #Since input is an array, each is looking at each of the elements within the array
  #   found_match = false # Why would this be assigned to false from the outset? What happens when it's true?
  #   #when this is true, we know that a letter has been found in the cipehered (jibberish) code. 
  #   cipher.each_key do |y| # What is #each_key doing here?
  #     #since ciper is a hash, each_key is looking at each key element 
  #     if x == y # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
  #       #I DONT KNOW! I Think it may be comparing the key(x) to the value (y)<--what's x?
  #       puts "I am comparing x and y. X is #{x} and Y is #{y}." 
  #       #puts this statement if x==y
  #       decoded_sentence << cipher[y]
  #       #adds __ to the emoty array decoded_sentence
  #       found_match = true
  #       #this is true since x=y
  #       break # Why is it breaking here?
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
  #take decoded_sentence and delimit it ?so that it displays as a normal sentence? (basically here join takes out the commas 
   # and replaces them no spaces, to form a word)
 
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



# Stypi
# def north_korean_cipher(coded_message) #Defining a method that takes in one paramater of type string
#   input = coded_message.downcase.split("") #This takes the input and makes it all lowercase characters and splits it into an array where each element is a word
#   decoded_sentence = [] #Declaring an empty array
# #   cipher = {"e" => "a", # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
# #             "f" => "b", # the best data structure for this problem? What are the pros and cons of hashes?
# #             "g" => "c", #This is a hash that has a key for each letter and provides a separate value according to the key
# #             "h" => "d", # A pro of a hash is that if you know the hash key or value you can always get the other
# #             "i" => "e", # A con is that you have to know one of the values
# #             "j" => "f", # Arrays are more efficient for computing, because you just need an index as opposed to a value
# #             "k" => "g",
# #             "l" => "h",
# #             "m" => "i",
# #             "n" => "j",
# #             "o" => "k",
# #             "p" => "l",
# #             "q" => "m",
# #             "r" => "n",
# #             "s" => "o",
# #             "t" => "p",
# #             "u" => "q",
# #             "v" => "r",
# #             "w" => "s",
# #             "x" => "t",
# #             "y" => "u",
# #             "z" => "v",
# #             "a" => "w",
# #             "b" => "x",
# #             "c" => "y",
# #             "d" => "z"}
            
# if input[i].include?(a..z)
# cipher[y-4]
# cipher= [a,b,c,d,e, etc.]
# i+=1
# .each
# input.each |x|
# x.include(cipher[0..)            
            
#   input.each do |x| # What is #each doing here? 
#     #Since input is an array, each is looking at each of the elements within the array
#     found_match = false # Why would this be assigned to false from the outset? What happens when it's true?
#     #when this is true, we know that a letter has been found in the cipehered (jibberish) code. If it was defaulted to true it would try and match unmatcheable characters
#     cipher.each_key do |y| # What is #each_key doing here?
#     #   #since cipher is a hash, each_key is looking at each key element. It is passing through the key to run functions on
#     #   if x == y # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#     #     #We Think it is comparing the element of input array (x) to the key of the hash (y)
#     #     puts "I am comparing x and y. X is #{x} and Y is #{y}." 
#     #     #puts this statement if x==y
#     #     decoded_sentence << cipher[y]
#     #     #pushes the key in cipher to the empty array decoded_sentence
#     #     found_match = true
#     #     #we are flipping the found_match switch to true
#     #     break # Why is it breaking here?
#       if x.include?(a..z)
#       input[i].match(cipher)
#           decoded_sentence << cipher[y-4]
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         #because these symbols do not translate in our cipher we want to add a space whenever we come across these
#         decoded_sentence << " "
#         #see above 
#         found_match = true
#         #found_match is true since we were able to translate the symbols into something we can understand
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does " (0..9).to_a " do?
#         #to_a turns the range into an array => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]. Here we are asking if this array includes x
#         decoded_sentence << x
#         #I guess it's assumed that if the include? is true, run the code following it. This pushes the number found into the array.
#         found_match = true
#         #we are flipping the found_match switch to true
#         break
#       end
#     end
#     if not found_match # What is this looking for?
#       #If the input doesn't match any of the above characters run this code 
#       decoded_sentence << x
#       #add x to decoded_sentence (aka there is no encryption for characters like punctuation)
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #take decoded_sentence and delimit it so that it displays as a normal sentence (basically here join takes out the commas 
#    # and replaces them no spaces, to form a word)
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. #this looks for any digit and one or more of those digits via regex
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...this subs out all of the instances with this regex and subbing with
#     #the output of the formula
#   end
#   return decoded_sentence # What is this returning? #Returns the decoded sentence
# end









# # Driver Code:
# p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# # Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"



# p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."

# p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"

# p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."

# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"