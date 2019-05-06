# Review of all Ruby concepts learned
# This will include reviewing Learn Co problems

# Linked List as a method
# a = [1,2,3,4,5,6,7,8]

# def insert(arr, item, pos)
#   tmp = arr[pos]
#   arr[pos] = item

#   arr.replace(arr[0..pos] + [tmp] + arr[pos+1..-1])
# end

# insert(a, 204, 3)
# p a


i = 0
arr = [1,2,3,4,5,6,7,8]

while i < arr.length
  puts "This is #{arr[i]}."

  i += 1
end

arr.each do |i|
  puts "This is #{i}"
end
