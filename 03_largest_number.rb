# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?


def largest_number2(number_1, number_2)       # Defining the method
  
  if number_1 == number_2                     # In case of equal values
    puts "They are the same"
  
  else
  number2 = [number_1, number_2]              
  
  return number2.max                          # Will return highest value in array
  end
end

puts largest_number2(100, 50)
puts largest_number2(10, 20)
puts largest_number2("Hot", "Hot")          # Strings return highest value in alphabetical order 