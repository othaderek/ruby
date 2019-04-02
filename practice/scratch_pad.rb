# def only_even(arr)

#   i = 0
#   new_arr = []

#   while i < arr.length
#     if arr[i] % 2 == 0
#       new_arr << arr[i]
#     else
#     end
#     i += 1
#   end
#   return new_arr

# end 

# puts only_even([2,23,45,66,75,89,98])

######### --------------------------------- #############
def from_to(first, last)
  
  arr = (first..last)

  arr.each { |i| puts i }

end

from_to(1, 13)