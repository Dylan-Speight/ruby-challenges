# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

# def in_array(needle, haystack)
#   (haystack.include? needle) ? (return true): (return false) 
# end


def in_array(needle, haystack)
  # find_needle = haystack.grep(needle)
  # find_needle = haystack.select {|needle.match(needle)}
  %w(Cat Dog Bird).has? 'needle'
  if find_needle == "#{needle}"
    return true
  else return false
  end
end
puts in_array("hello", ["hi", "howdy", "hello"])

# Beast Mode:

# Redo the challenge but try solving it again in a different way.