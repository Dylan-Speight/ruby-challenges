# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
    word.each do |x|
        if x.succ != word[word.index(x)+1] 
            return x.succ
        end
    end
end