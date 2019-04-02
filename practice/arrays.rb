# Arrays
# We use arrays to store multiple data types

letters= ["a", "b", "c"]

puts letters  # puts formats array contents on new lines; prints returns in brackets


puts letters.length # This gives the amount of elements in the array; so 3 in this case

puts letters[0] # This returns the first index value of the array in much the same way as it does for the first string character

# You can also mix up different types in an array but
# try we try and be organized with arrays


# SHOVEL LECTURE

names = ["Karl", "Dean", "Larry"]

print names
print "\n" # This will create a new line

names << "Dan" # This is called a shovel and it adds to the end of an array

print names

### --------- ### --------- ###

cats = [1, 2, 3]

dogs = [4, 5, 6]

cats << dogs # you can add arrays to arrays with shovel

print cats

### --------- ### --------- ###

numbers = [ 1, 2, 3]

numbers[1] = 4 # This puts the number 4 in index 1 while also getting rid of 2

print numbers

### ITERATING ARRAYS LECTURE ###

foods = [ "pizza", "sushi", "burgers", "fries", "ramen"]

i = 0 # Sets number value to be used in index evaluation
while i < foods.length # Evaluates whatever i is set to and returns corresponding index value
	puts  foods[i] # Index into the array by using this; foods of into

	i += 1
end



### Iterating Arrays as a method ###

def print_array(arr) # define method with one parameter
	i = 0 # set starting index value
	while i < arr.length
		puts arr[i] # Returns the value in the array at index value iteration

		i += 1
	end
end

names = ["don", "ron", "larry"] # Set array values
print_array(names) # Calls method with 1 argument 




def doubler(numbers)
	doubled_nums = [] # Creates empty array to store double nums

	i = 0
	while i < numbers.length
		old_elem = numbers[i] # Creates temporary variable to hold number for each iteration
		new_elem = old_elem * 2 # Multiplies old element by two and saves to new variable
		doubled_nums << new_elem

		i += 1 # Iterates upwards
	end

	return doubled_nums
end

print doubler([ 2, 4, 6, 8]) # REmember to print your method call


### --- YELL PROBLEM --- ###
# Write a method yell(words) that takes in an array of 
# words and returns a new array where every word from 
# the original array has an exclamation point after it.


def yell(words) # DEFINE METHOD WITH ONE PARAM
  
  i = 0 # SET FIRST INDEX VALUE
  
  new_array = [] # CREATE AN EMPTY ARRAY
  
  while i < words.length # WHILE LOOP THAT CHECKS IF I IS LESS THAN THE ARRAY LENGTH
    old_ele = words[i] # VARIABLE TO STORE INDEXED VALUE OF ARRAY
    exclamations = old_ele + "!" # VARIABLE THAT CONCATENATES EXCLAMATION TO END OF INDEX ARRAY VALUE
    new_array << exclamations # SHOVELS IT INTO END OF ARRAY VARIABLE
    i += 1 # INCREMENT OF ONE ITERATION

  end
  return new_array # RETURNS FINAL VALUE OF NEWLY CREATED ARRAY
  

end # ENDS METHOD

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]






def element_times_index(numbers)
  
  i = 0  # i represents to the index current index always
  
  new_array = []
  
  while i < numbers.length # We cant do less than or equal to here
    
    new_array << numbers[i] * i # You can shovel directly into a new array
    i += 1
  end
  return new_array
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


### --- EVEN NUMS --- ###
# Write a method even_nums(max) that takes in a number max 
# and returns an array containing all even numbers from 0 
# to max


def even_nums(max)
  
  i = 0
  
  even = []
  
  while i <= max
    
    if i % 2 == 0
      even << i
    end
    
    i += 1
    
  end
  
  return even

end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

### --- ARRAY CHALLENGE --- ###
# Write a method range(min, max) that takes in two numbers 
# min and max. The function should return an array containing
# all numbers from min to max inclusive.



def range(min, max)
  
  i = min
  new_array = [] # The reason this is here and not in while loop is because we would be  setting it to an empty array at the beginning of every instance and it would return the last iteration value of i.
  
  while i <= max
    
    new_array << i # Shovels each iteration of i in to array
    i += 1 # Goes up by one
  end
  return new_array # Self explanatory

end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

### --- ODD RANGE CHALLENGE --- ###
# Write a method odd_range(min, max) that takes in two 
# numbers min and max. The method should return an array 
# containing all odd numbers from min to max (inclusive).

def odd_range(min, max) # Define method with 2 params
  
  i = min # since we are being to ask to start with first param we set i to start at min; the first param
  new_array = [] # Create an empty array to shovel values into
  
  while i <= max # Sets condition
    
    if i % 2 != 0 # If statement that uses an expression to determine if number is NOT an even number, odd numbers will always equal 1, but you can also put not equal to 0. Logical expression
      new_array << i # Shovel not even number value screened by above condition into array
    end # End of if loop
    
    i += 1 # Increments each iteration by one
  end # End of method
  return new_array # Returns array values after end of method

end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]


### --- REVERSE RANGE CHALLENGE --- ###
# Write a method reverse_range(min, max) that takes in two 
# numbers min and max. The function should return an array 
# containing all numbers from min to max in reverse order. 
# The min and max should be excluded from the array


def reverse_range(min, max) # Define method
  
  i = max - 1 # Because we are trying to reverse the order of array we have to start with the max value; minus one because it does not include min or max
  
  new_array = [] # Create an empty array to shovel values into
  
  while i > min # We have to start from the max value which will be in i, minus one of course, so for the loop to run i has to always be greater than min which will be the last iteration

    new_array << i # Shovels the value of i into new array
    
    i -= 1 # When we want to go up in numbers we use plus equals, since we are going down in numbers we use -=
  end
  return new_array # REturns new array values after the end of while loop

end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]


### --- FIRST HALF --- ###
# Write a method first_half(array) that takes in an array 
# and returns a new array containing the first half of the 
# elements in the array. If there is an odd number of elements, 
# turn the first half including the middle element.


def first_half(array)

	i = 0

	new_array = []

	while i < array.length / 2.0 # This is makes sure that the loop runs while i is less than half of the length; thus the divided by two expression. This will always include the middle element since the index value is still less than half the whole array length value.

		new_array << array[i] # Array of i is important here or else it wont add the specific array value into the new array variable

		i += 1
		
	end
	return new_array
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])   


### --- FACTORS OF --- ###
# Write a method factors_of(num) that takes in a num and 
# returns an array of all positive numbers less than or equal 
# to num that can divide num.

def factors_of(num) # Define method with one param
  
  i = 1 # To prevent dividing by zero start at one because of future modula expression
  new_array = [] # Create and empty array to shovel numbers while they meet requirements of the if statement
  
  while i <= num 
    
    if num % i == 0 # Parameter entered must be a factor of i since we are cycling through iterations and i is incrementing upwards
      
      new_array << i # Shovel iterations that fulfill logical conditions
    end
    
    i += 1 # Increment up 1 at a time
  end
  return new_array # Prints array after while loop ends; while loop conditions are met

end # End of method

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]



### --- Select Odds Challenge --- ###
# Write a method select_odds(numbers) that takes in an array
# of numbers and returns a new array containing the odd numbers 
# of the original array.

def select_odds(numbers)
  
  i = 0
  
  new_array = []
  
  while i < numbers.length
    
    if numbers[i] % 2 != 0
      
    	new_array << numbers[i]
    end
    
     i += 1
  end
  return new_array

end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

### --- Select Long Words --- ###
# Write a method select_long_words(words) that takes in an 
# array of words and returns a new array containing all of 
# the words of the original array that are longer than 4 
# characters.                               

def select_long_words(words) # Define method
  i = 0 # Set starting index value
  new_array = [] # Create new empty array to shovel values into
  
  while i < words.length # Length of word argument array must be less than index value of current iteration
    if words[i].length > 4 # Character length of words of index value must be greater than 4
      new_array << words[i] # Words of i value then is allowed to be put into array
    end
    i += 1 # Increase by 1 per iteration til condition no longer logical
  end
  return new_array 

end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])

### --- SUM ELEMENTS CHALLENGE --- ###
# Write a method sum_elements(arr1, arr2) that takes in 
# two arrays. The method should return a new array containing 
# the results of adding together corresponding elements of the 
# riginal arrays. You can assume the arrays have the same length.


def sum_elements(arr1, arr2)
  i = 0
  
  new_array = []
  
  while i < arr1.length 
    
    new_array << arr1[i] + arr2[i]
    
    i += 1
  end
  return new_array

end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]



### --- FIZZ BUZZ CHALLENEGE --- ###
# Write a method fizz_buzz(max) that takes in a number max and 
# returns an array containing all numbers greater than 0 and 
# less than max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max) # Define method
  
  i = 0 # Set iteration start
  
  new_array = [] # Create array
  
  while i < max # Set condition that determines how long loop iterates

  	if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)

  		new_array << i

  	end

  	i += 1 # Increment loop by 1
  end
  return new_array

end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]


