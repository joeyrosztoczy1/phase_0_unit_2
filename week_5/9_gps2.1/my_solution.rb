# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 





# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Joey Rosztoczy
# 2) 

 # This is the file you should end up editing. 
 
# def bakery_num(num_of_people, fav_food) # Defines a method which takes a number of people and outputs the food needed for the group
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # Hash of how many people each food item feeds
#   pie_qty = 0 # Declaring variables for the quantity needed to feed the people. 
#   cake_qty = 0 # ' ' ' ' '
#   cookie_qty = 0 # ' ' ' ' 
  
#   has_fave = false # Compares the list to the parameter that is used as the input 

#   my_list.each_key do |k| # Iterates through my_list, returns the key from the hash, and passes it through to a block. 
#     if k == fav_food # If the value matches the parameter of the favorite food, then execute
#       has_fave = true # If it finds a key that matches in the list 
#       fav_food = k # Creates a local variables, that uses the key value. 
#     end
#   end
#     if has_fave == false 
#       raise ArgumentError.new("You can't make that food") # If the match isn't found, the program throws an error.
#     else
#       fav_food_qty = my_list.values_at(fav_food)[0] # Setting fav_food_qty equal to the value of the hash at fav_food
#     if num_of_people % fav_food_qty == 0 # If it divides evenly between the number of people and how much their fav_food feeds
#       num_of_food = num_of_people / fav_food_qty # Return number of their favorite food. 
#     return "You need to make #{num_of_food} #{fav_food}(s)." # ' ' ' ' 
#     else num_of_people % fav_food_qty != 0 # Checks what other food we can make to compensate for the left-overs. 
#   while num_of_people > 0 # 
#     if num_of_people / my_list["pie"] > 0
#       pie_qty = num_of_people / my_list["pie"]
#       num_of_people = num_of_people % my_list["pie"]
#     elsif num_of_people / my_list["cake"] > 0
#       cake_qty = num_of_people / my_list["cake"]
#       num_of_people = num_of_people % my_list["cake"]
#     else
#       cookie_qty = num_of_people
#       num_of_people = 0
#     end
#   end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # Concatenates the string and returns the string. 
#     end
#   end
# end
 

# #-----------------------------------------------------------------------------------------------------
# #DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# # These are the tests to ensure it's working. 
# # These should all print true if the method is working properly.
# p bakery_num(24, "cake") == "You need to make 4 cake(s)."
# p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
# p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
# p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
# p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# # p bakery_num(3, "apples") # this will raise an ArgumentError

# # You SHOULD change this driver code. Why? Because it doesn't make sense.
# p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

# # Our Refactored Solution

def bakery_num(num_of_people, fav_food) # Defines a method which takes a number of people and outputs the food needed for the group
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # Hash of how many people each food item feeds
  pie_qty = 0 # Declaring variables for the quantity needed to feed the people. 
  cake_qty = 0 # ' ' ' ' '
  cookie_qty = 0 # ' ' ' ' 

  raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food) 
    
  fav_food_qty = my_list[fav_food] # Setting fav_food_qty equal to the value of the hash at fav_food
  if num_of_people % fav_food_qty == 0 # If it divides evenly between the number of people and how much their fav_food feeds
    num_of_food = num_of_people / fav_food_qty # Return number of their favorite food. 
    return "You need to make #{num_of_food} #{fav_food}(s)." # ' ' ' ' 
  end
    
  while num_of_people > 0 # 

    case fav_food
        when "pie"
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
        when "cake"
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
        when "cookie"
            cookie_qty = num_of_people / my_list["cookie"]
            num_of_people = num_of_people % my_list["cookie"]
    end
        
    If num_of_people / my_list["cake"] > 0
      cake_qty = num_of_people / my_list["cake"]
      num_of_people = num_of_people % my_list["cake"]
    else
      cookie_qty = num_of_people
      num_of_people = 0
    end
  end
  return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # Concatenates the string and returns the string. 
  end
end
 

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." 





#  Reflection 
