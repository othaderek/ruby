# ### --- INDEX & INCLUDE METHODS LECTURE --- ###

# # arra/sting.index(ele) - evaluates tot the index where ele is found
# # array/string.include?(ele) - evaluates to a boolean indicating if ele is found

# # returns index of argument
# arr = ["SF", "NY", "LA"]
# puts arr.index("LA")

# # .include?() will return a boolean value
# arr = ["SF", "NY", "LA"]
# puts arr.include?("NJ")

# # Works with strings too

# str = "hello"

# puts str.index("ello")

# ### --- REVERSE METHOD --- ###

# # array/string.reverse, evaluates to a new reverse version of the array or string
# # array/string.reverse!, reverse an array/string in place

# arr = [1, 2, 3, 4]
# print arr
# puts 
# arr.reverse!
# print arr
# puts

# str = "hello"
# puts str.reverse

# # Write a method that checks if a word is a palindrome

# def is_palindrome(word)

# 	return word == word.reverse

# end

# puts is_palindrome(gets.chomp)

### --- RANGE SLICING LECTURE --- ###

# array[startIdx..endIdx] - grabs elements from startIdx to edIdx (inclusive)
# array[startIdx...endIdx] - grabs elements from startIdx to edIdx (excluding the element at endIdx)

arr = ["a", "b", "c", "d", "e"]
print arr[1..3] 
puts
str = "bootcamp"
print str[1...3]
puts
# You can also use negative characters in a range like [3..-1]; negative one always being the last index value

### --- SPLIT AND JOIN --- ###

# string.split evaluates to an array
# array.join evaluates to a string

str = "follow the yellow brick road"

print str.split("o") # takes out the string element(s) entered as arg on variable
puts

arr = ["hello", "world", "how", "you"]

puts arr.join("") # join puts argument between every array value; so if you put " " it would return all of the array vals with a space between them

str = "follow the yellow brick road" 
chars = str.split ("") # this creates an array of every character
print chars
puts

str = "follow the yellow brick road"
print str.split("l").join("Z") # this removes the l element and replaces it with Z
puts

























