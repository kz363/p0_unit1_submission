# U1.W3: Pad an Array!

# I worked on this challenge with Jake Huhn.

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# 1. Pseudocode

# What is the input?
# The input will be an array filled with a certain number of elements and then the #pad method followed by an argument number.
# This parameter will delegate how many additional empty elements must be added (or 'padded') to the array. 
# Additionally, the user can choose to add a string or specific element that will be a placeholder for the pads. 

# What is the output? (i.e. What should the code return?)
# The output will be a new array that is 'padded' with the correct number of elements, as chosen by the user.
# If the user does not specify a placeholder for these pads, they will be empty ('nil').
# If the user does specify, they will hold this new value. 
# If the user enters a number as an argument that is equal to or less than the number of elements in the original array, the original will be returned as is.

# What are the steps needed to solve the problem?
# Define a method of class Array, pad!, that takes pad_length as an argument and an optional pad_value, default to nil, as an argument
# Until (loop) self.length is equal to pad_length, push pad_value
# Return self

# Define a method of class Array, pad, that takes pad_length as an argument and an optional pad_value, default to nil, as an argument
# Create a new_array variable and set it to self.clone
# Until (loop) self.length is equal to pad_length, push pad_value
# Return new_array

# 2. Initial Solution

# class Array 
#     def pad!(pad_length, pad_value = nil)
#         until self.length >= pad_length
#             self << pad_value
#         end
#         self
#     end
     
#     def pad(pad_length, pad_value = nil)
#         new_array = self.clone 
#         until new_array.length >= pad_length
#             new_array << pad_value
#         end
#       new_array 
#     end
# end

# 3. Refactored Solution

class Array
    def pad!(pad_length, pad_value = nil)
        self << pad_value until self.length >= pad_length
        self
    end
     
    def pad(pad_length, pad_value = nil)
        new_array = self.clone 
        new_array << pad_value until new_array.length >= pad_length
        new_array 
    end
end 

# 4. Reflection 
# We coded up our pseudocode with how we thought the logic in our methods was going to work
# in our minds, but we did run into problems with syntax and such that confused us. There were 
# two problems in our code that we ran into: how to properly declare an optional parameter, and
# how to properly clone an array. We initially used *pad_value to indicate an optional parameter, 
# but we ran into the problems in our code when pad_value wasn't given since it doesn't default 
# to nil like we thought. Then we found out how to set it to a default value of nil, and then our
# code was able to run without a hitch. Our other problem came up when our #pad method didn't run 
# non-destructively. This was because we had new_array = self and then edited new_array, but this 
# also edits self because they point to the same location in memory. We found out about the #clone 
# method for objects, and everything was solved. I enjoyed this challenge because of these two 
# problems, because now I know that much more about how the Ruby language works.