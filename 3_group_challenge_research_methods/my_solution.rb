# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  words = []
  source.each {|element| words << element unless (element.is_a? Integer) || !(element.include? thing_to_find)}
  words
end

def my_hash_finding_method(source, thing_to_find)
  names = []
  source.each {|k,v| names << k if v == thing_to_find}
  names
end

# Identify and describe the ruby method you implemented. 
# I used each to iterate over the array and hash. It does whatever block of
# code you put after it for each element of the array/hash. I used {} but you 
# can use do-end as well. You can use |x| in the block to indicate how you want 
# to reference each element in your code, or in the case of hashes, |x, y|.

# Person 1's solution (Ken)
# def my_array_finding_method(source, thing_to_find)
#    source.select { |x| x.to_s.include? thing_to_find}
# end

# def my_hash_finding_method(source, thing_to_find)
#    hash = source.select { |k,v| v == thing_to_find }
#    output = hash.keys
# end

# Identify and describe the ruby method you implemented. 
# The Ruby method I implemented was select. It selects all the elements of an array/hash
# that returns true in the block. Using that, I was able to find and return the elements
# from the data structures that I want.


# Person 2
def my_array_modification_method(source, number)
  source.map!{|element| element.is_a?(Integer) ? element + number : element}
end

def my_hash_modification_method(source, number)
  source.update(source){|key,value| value +number}
end

# I used two ruby methods, map! for the array and update for the hash.
# (map! returns an array, which is why it couldn't be used for the hash method.)
# map! runs the code in the block for each element of the enumerable object, changing the underlying array.
# In this case, the block code is a ternary operator which modifies only if the element is an Integer.
# The update method performs a similar operation on a hash object.


# Person 3
def my_array_sorting_method(source)
  source.sort { |a,b| a <=> b } 
end

def my_hash_sorting_method(source, thing_to_sort)
  source.sort_by { |name, age| age } 
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I'm not sure if I used the right method for my Person 1 part, but I couldn't think of 
# another method that fit the situation. I only doubt that it was each because I assume 
# it's what everyone is taught to iterate over array/hashes. I did run into some syntax 
# issues when I was trying to refactor my_array_finding_method to make everything fit on 
# one line, but you can see the result up there. This was the first time I used unless 
# in my code because it felt more like natural English than if I were to use if, so that 
# was cool.

# UPDATE
# Another person in my group, Ken, was also Person 1 and used the select method to complete 
# the code. I'm glad he was able the find the proper method to do it because I felt like 
# using each was a cop out.