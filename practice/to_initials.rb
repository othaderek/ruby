### To Initials ##

# Write a method to_initials that takes in a person's 
# name string and returns a string representing their initials.


def to_initials(name)
  
  new_arr = name.split(" ")
  ele1 = new_arr[0][0]
  ele2 = new_arr[1][0]

  initials = ele1 + ele2
  return initials

end

puts to_initials("Kelvin Bridges")  # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# The reason the code above works but not entirely is it
# doesnt account for more than two initials
# the bottom code accounts for all and uses more block code

def to_initials(name)
  parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

# First the method assigns the result of the split method to a variable
# which will be an array. an initials string is created to 
# store initials. the each method is call on parts which contains the
# result of the array that .split method created. When call
# on part the .each method then iterates through EACH array element in 
# the parts variable it concatenates every 0 index value to initials variable.
# return initials at the end of the code
# then we call the methods with arguments.