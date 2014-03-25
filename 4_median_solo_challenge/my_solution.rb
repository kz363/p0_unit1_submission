# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Create a function, median, that takes an array as an input and returns the median of the array.
# Sort the array.
# If the array is of odd length, return the value at array.length/2
# Else, return the sum of the two middle values.

# 2. Initial Solution

# def median(array)
#   array.sort!
#   if array.length % 2 != 0
#     return array[array.length/2]
#   else
#     return (array[array.length/2] + array[array.length/2 - 1]) / 2.0
#   end
# end


# 3. Refactored Solution

def median(array)
  array.sort!
  return array[array.length/2] if array.length % 2 != 0
  return (array[array.length/2] + array[array.length/2 - 1]) / 2.0
end

# 4. Reflection 
# This challenge was relatively simple since we've already had to find the median of an array. 
# Everything went smoothly as a result. I'm not sure if the refactored code is necessarily 
# refactored, however. I just saw the opportunity to use less lines and I went for it.