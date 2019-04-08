
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.


def balanced_num(number)
    beforecenter = 0
    aftercenter = 0
    firsthalf = 0
    secondhalf = 0
    arr = number.to_s.chars
    endofarray = arr.length - 1
    if arr.length % 2 == 0
        if arr.length == 2 
            return "Balanced"
        else
            beforecenter = (arr.length/2)-2
            aftercenter = (arr.length / 2)+1
            firsthalf = arr[0..beforecenter].map {|v| v.to_i}
            secondhalf =  arr[aftercenter..endofarray].map {|v| v.to_i} 
            secondhalf.inject(:+) == firsthalf.inject(:+) ? "Balanced" : "Not Balanced"
        end
    else
        if arr.length == 1
            return "Balanced"
        else
            beforecenter = (arr.length / 2) - 1
            aftercenter = (arr.length / 2) + 1
            firsthalf = arr[0..beforecenter].map {|v| v.to_i}
            secondhalf =  arr[aftercenter..endofarray].map {|v| v.to_i} 
            secondhalf.inject(:+) == firsthalf.inject(:+) ? "Balanced" : "Not Balanced"
        end
    end
end

# p arr = 12340.to_s.chars
# p arr.length / 2
# p aftercenter = ((arr.length) / 2)+1
# p beforecenterodd = (arr.length / 2)-1
# p beforecentereven = (arr.length/2)-2
# p endofarray = (arr.length - 1)
# p arr[aftercenter], arr[beforecenter]
# p arr_first_half = arr[0..beforecenter].map {|v| v.to_i} 
# p arr_first_half.inject(:+)
# p arr_second_half = arr[aftercenter..endofarray].map {|v| v.to_i}
# p arr_second_half.inject(:+)
# p arr.length.even?

p balanced_num(123456789)
