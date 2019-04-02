def divisible_count(arr, factor)

    i = 0

    while i < arr.length

    	is_divis = i - 1

    	if arr[i] % factor == 0

    		is_divis += 1

    	end
    	i += 1
    end
    return is_divis
end

p divisible_count([10, 6, 30, 17], 5)    #=> 2


## --- ### --- ### --- ### 

def average_array(arr)

    i = 0
    sum = 0
    avg = 0.0

    while i < arr.length

    	old_ele = arr[i] # this will store new value every iteration

			
		sum = old_ele + arr[i]

       

        i += 1

    end
    avg = sum / arr.length
    return avg
end

p average_array([3, 2, 10])     # => 5.0

# THIS CODE IS A METHOD THAT ADDS EVERY ELEMENT OF AN ARRAY AND
# DIVIDES IT BY THE LENGTH OF ARRAY
# 
# 

def average_array(arr)

    i = 0
    sum = 0
    avg = 0.0

    while i < arr.length

        old = arr[i]

        sum += old 

        i += 1
    end

    avg = sum / arr.length.to_f

    return avg
end

p average_array([3, 2, 10])     # => 5.0
p average_array([4, 3, 3, 14])  # => 6.0
p average_array([5, 10])        # => 7.5



