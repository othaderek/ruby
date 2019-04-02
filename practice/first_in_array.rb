def first_in_array(arr, el1, el2)
  if arr.index(el1) > arr.index(el2) 
    return el1
  else
    return el2
  end

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"




# The .index method takes an index value as an argument,
# in this case the index argument is stroed in the el1/el2 parameters
# in the first_in_array method call. We can check if one is greater
# than the other and return the one thats greater with a simple if statement.
