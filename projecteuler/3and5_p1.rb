# Project Euler #
# Problem 1 #
# Multiples of 3 and 5 #

# If we list all the natural numbers below 10 that are multiples of
# 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000


a = (1...1000).to_a

def multiples(arr)
	i = 0
	new_arr = []
	while i < arr.length

		if arr[i] % 3 == 0 || arr[i] % 5 == 0
			new_arr << arr[i]
		end
		i += 1
	end
	return new_arr.sum
end 

puts multiples(a)
