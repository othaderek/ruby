# Nested loops


(1..3).each do |num1|
	puts num1

	(1..5).each do |num2|
		puts "      " + num2.to_s

	end
end

# Nested loops 2

# below we iterate through all possible w/ duplicates
arr = ["a", "b", "c", "d"]

arr.each do |ele1|
	arr.each do |ele2|
		puts ele1 + ele2
	end
end

# below we iterate through only unique pairs; meaning no repeats

arr = ["a", "b", "c", "d"]

arr.each_with_index do |ele1, idx1|
	arr.each_with_index do |ele2, idx2|
		if idx2 > idx1
			puts ele1 + ele2
			puts idx1.to_s + " " + idx2.to_s
			puts "~~~~~~~~~"
		end
	end
end

# if idx2 is greater than idx1, then idx2 is never referring
# to what idx1 referred to previously.

# 2 Dimensional array lecture

arr = [ 
	["a", "b", "c"],
	["d", "e"],
	["f", "g", "h"],
	]
print arr.length # This returns array of parent array arr
puts 
print arr[1] # This returns second element in arr
puts 
subArr = arr[2] # This stores a copy of the third array of parent array into new variable
print subArr
puts 
print subArr[1] # This prints the value in index 1 of the array now saved in this variable
puts 
print arr
puts
print arr[2][2] # This will find 
puts

# Create array of array in variables
arr = [ 
	["a", "b", "c"],# These are the sub-arrays within the main array, they have elements in them
	["d", "e"],
	["f", "g", "h"],
	]

arr.each do |subArr| # 
	print subArr
	puts
	subArr.each do |ele|
		puts ele
	end
end



