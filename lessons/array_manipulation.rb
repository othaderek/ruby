### --- ARRAY MANIPULATION -- ##

# << adds an element to the end of an aray, evaluates to the array 

#  array.push adds an element(s) to the end of an array, evaluates to the array
#  array.pop removes the last element of an array, evaluates to the element that was removed

#  array.unshift adds an element to the front of an array, evaluates to the array
#  array.shift removes the first element of an array, evaluates to the element that was removed


arr =["vanessa", "candace", "dave"]

print arr
puts
# Shovel only operates on a single value at a time
arr << "otha"
print arr
puts
# ^^^ This can also be array.push with an element passed as arg
arr.push("jia", "leah", "sarah")
print arr
puts
# You can list multiple params here too
# If you want to
print arr.pop()
puts
print arr 
# pop gets rid of the last element in an array, also evaluates the element removed

# If we are gonna call a method and it doesnt take in any parameters or args you can omit the parenths

print arr.unshift("first now")
puts
print arr

print arr.shift
puts
print arr





