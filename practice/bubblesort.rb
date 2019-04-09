def bubblesort(array)
	n = array.length

	loop do 
		swapped = false

		(n - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped =  true
				p array # This will print every iteration in array form
			end
		end
		break if not swapped
	end
	array

end

a = [83,43,8,0,9,81,22,13,56,3,6,75,2]
p bubblesort(a)

