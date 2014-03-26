# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge Ken Sin

# 1. Pseudocode

# Define mode method that accepts a single array
# Make an empty hash and set all the default values to 0.
# Iterate through the array with an each method: 
# for each element in the array, make a key in the hash
# and add one to the value.
# Create a new array and push all the Hash max values into
# the array
# Return the array

# 2. Initial Solution

# def mode(ary)
#   hash = Hash.new(0)
#   ary.each { |x| hash[x] += 1 }
#   output_array = []
#   hash.each { |k, v| output_array << k if v == hash.values.max }
#   output_array
# end


# 3. Refactored Solution

def mode(ary)
  mode_count = Hash.new(0)
  ary.each { |x| mode_count[x] += 1 }
  output_array = []
  mode_count.each { |k, v| output_array << k if v == mode_count.values.max }
  output_array
end


# 4. Reflection 
# We decided to use hashes for this challenge to solidify our knowledge of using them. 
# Our pseudocode worked out nicely, but we ran into slight trouble with trying to word 
# certain things correctly for our code on lines 35 and 37. I think it should make sense 
# to a more general audience though. Creating a histogram out of an array and a hash is 
# one of those concepts I feel it's really hard to think up of without outside help. 
# I only know of it because of some prep work that I did before phase 0, but it's really 
# useful for situations like these. Overall this challenge worked out pretty well and I 
# feel comfortable working with arrays and hashes.