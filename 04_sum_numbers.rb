# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb
a = [{'John' => 2}, {'Harpy' => 4}]
b = [5, 6, 7, 8]

def sum_numbers (numbers)
  puts numbers.inject(:+)
end

sum_numbers([1,1,1])
sum_numbers([5,2,100,0,10])
sum_numbers([-45,100,36000,9.888])
sum_numbers([])                                                     #Returns blank
sum_numbers([10.0, 9.5, 9.6666])                                    #Interesting output
sum_numbers(["t","h","e"])                                          #Adds strings 
sum_numbers([8.1, 5.3, 2.2])                                        #Breaks?
sum_numbers([a,b])                                                  #Array layout = gross

# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
