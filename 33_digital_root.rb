# Digital root

# The digital root (also repeated digital sum) of a 
# non-negative integer is the (single digit) value 
# obtained by an iterative process of summing digits, 
# on each iteration using the result from the previous 
# iteration to compute a digit sum. 
# The process continues until a single-digit number is reached.

# For example, the digital root of 65,536 is 7, 
# because 6 + 5 + 5 + 3 + 6 = 25 and 2 + 5 = 7.

# Your code should return the digital root of any positive
# number passed in. 
# You can assume the argument given is an integer.
# Return -1 if any negative argument is provided.

def digital_root(number)
    if number >= 0
        while number > 9 do
            number = number.digits.inject(&:+)
        end
        return number
    else
        number = -1
    end
end
p digital_root(89)
p digital_root(234)
p digital_root(4)
p digital_root(-123)
p digital_root(65536)
p digital_root(0)