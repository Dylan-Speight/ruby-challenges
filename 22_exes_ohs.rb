# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
    # Your code goes here
end



input = "oOxXoxoX"
p input_array = input.chars
p totals_hash = input_array.each_with_object(Hash.new(0)) { |element, counter| counter[element] += 1 }#.to_h#sort_by{|k,v| -v}.to_h
p totals_hash["x"] == totals_hash["o"] ? (return false) : (return true)


#Find the individual elements of the string
# Split into an array? .scan? iterate into a hash? Make hash key add number with .count?
#count each occurance of the different elements selected
# Split into 2 arrays and .length? count by individual values? smash em into a hash and compare the values?
#compare and return boolean
# == ?