# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Create a function, total, that takes an array as an input and returns 
# the sum of all the elements in the array.
#   - Create a variable, sum equal to 0
#   - For each element in the array, add to sum
#   - Return sum

# Create a function, sentence_maker, that takes an array of strings or numbers 
# and returns a string of each element joined into a sentence.
#   - Call the join method on the array with a space as the separator and store 
#     it into a variable called string
#   - Capitalize the first letter 
#   - Concatenate a period.
#   - Return string

# 2. Initial Solution

# def total(array)
#   sum = 0
#   array.each do |i|
#     sum += i
#   end
#   sum
# end

# def sentence_maker(array)
#   string = array.join(" ")
#   string[0] = string[0].capitalize
#   string += '.'
# end

# 3. Refactored Solution

def total(array)
  array.reduce(:+)
end

def sentence_maker(array)
  string = array.join(" ") + '.'
  string[0] = string[0].upcase
  string
end

# 4. Reflection 

# My initial code worked out well because I followed my pseudocode. After I wrote 
# my code, I kept wondering if Ruby had any built in methods to make any of this 
# easier. the array.reduce methods was one that I found to sum arrays easily. I 
# still don't know if my sentence_maker is optimal, but it's the best I can do for 
# now. I'm confident in the learning objectives. I enjoyed finding new methods 
# to do stuff in Ruby. I'm in the mindset that Ruby has a method to do everything, 
# because it's been true for my small amount of Ruby experience so far.