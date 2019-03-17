# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

puts "first_input"
first = gets.chomp.downcase.split
p first
puts "second input"
second = gets.chomp.downcase.split
p second
for first in 
    if first.include?(word)
       first = first[second.index(word)] = "HIDDEN"
    end
end
p carriage


# Your code here



# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.