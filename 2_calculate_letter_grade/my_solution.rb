# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Create a function, get_grade, that takes an array as an input. Store 
# the average of the array into a variable called array.
#   -If average is >= 90, return "A"
#   -If average is >= 80, return "B"
#   -If average is >= 70, return "C"
#   -If average is >= 60, return "D"
#   -If average is < 60, return "F"

# 2. Initial Solution

# def get_grade(array)
#   average = array.reduce(:+) / array.length
#   return "A" if average >= 90
#   return "B" if average >= 80
#   return "C" if average >= 70
#   return "D" if average >= 60
#   return "F" if average < 60
# end

# 3. Refactored Solution

def get_grade(array)
  average = array.reduce(:+) / array.length
  return "A" if average >= 90
  return "B" if average >= 80
  return "C" if average >= 70
  return "D" if average >= 60
  return "F"
end

# 4. Reflection 

# I was deciding between using if/elsif and cases at first, but I decided 
# to keep it simple and just use if statements since the code will terminate 
# when it returns something anyway. My refactored version has a very minimal 
# change, but the code remains functionally the same. I was able to use the 
# new method I learned from the last challenge so that was cool.