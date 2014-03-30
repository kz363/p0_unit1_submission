# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
# I learned about the flatten method for arrays, even though I don't think it was necessary.
# I liked how the person approached the amount of times to loop by subtracting the lengths.
# Copy solution here:

class Array

  def pad! (length_new, pad_with = nil)

    (length_new - length).times {self << pad_with}

    self

  end

  def pad (length_new, pad_with = nil)

    result = [] << self
    (length_new - length).times {result << pad_with}

    result.flatten

  end

end



# 2. Second Person's solution I liked
# I found the lack of parentheses interesting and the usage of push instead of <<.
# Copy solution here:

class Array
  def pad! n, padding=nil
    spaces = n - self.length
    if spaces > 0
      spaces.times { self.push(padding) }
      self
    else
      self
    end
  end
  def pad n, padding=nil
    spaces = n - self.length
    padded = self.clone
    if spaces > 0
      spaces.times { padded.push(padding) }
      padded
    else
      padded
    end
  end
end


# 3. My original solution:

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

# 4. My refactored solution:
# I believe the code that I came up with is good as is. It seems like the majority of the solutions 
# I looked through calculated the number of times to add a pad value by subtracting lengths, but 
# I used until to do that easily. Also, because of the use of until, I find that it's easy to read 
# the code because it's more like English.


# 5. Reflection
# Even though I didn't end up refactoring my code, I found it nice to read through other people's 
# solutions because I feel like there's so many ways to go about solving a problem in Ruby. There's 
# always such different usage of methods and syntax that it makes two solutions read very dissimilarly 
# even though they accomplish the same task. Overall I think I'm confident with the knowledge that I've 
# gained from this challenge. 