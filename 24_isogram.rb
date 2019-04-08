# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a input 
# that contains only letters is an isogram. 
# The function will take the input as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

# def isogram?(input)
#     input = input.gsub(" ","").chars
#     count_letters_hash = input.uniq.map { |letter| [letter, input.count(letter)] }.to_h
# for key in count_letters_hash  do 
#     count_letters_hash[key] > 1 ?
# end
# end
# loop through letters in the string 
# if i have seen a character before return false
# if i look at all characters and havent seen any of them before return true

def isogram?(input)
    seen = []
    input.chars.each do |char|
        seen.include?(char) ? (return false) : seen << char
    end
    return true
end





# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
