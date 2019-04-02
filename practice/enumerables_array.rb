# range enumerable
#  .. in range is inclusive of last ele
# ... in range is exlusive of array
 

(1..100).each { |num| puts num } # This will include last element in range
(1...100).each { |num| puts num } # This will not include last


# Write a method fizzBuzz that takes in a number max
# and returns an array returning all numbers less than max
# that are divisible by 3 or 5, but not both

def fizzBuzz(max)
	arr = []

	(1...max).each do |num|
		if num % 3 == 0 && num % 5 != 0
			arr << num
		end
		if num % 3 != 0 && num % 5 == 0
			arr << num
		end
	end

	return arr
end

print fizzBuzz(20)
puts

### --- ENUMERABLES LECTURE 3 --- ###

(0...4).each { puts "hello" }

4.times { puts "hi" }