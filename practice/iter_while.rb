# Write a method sum_nums(max) that 
# takes in a number max and returns the sum 
# of all numbers from 1 up to and including max.

def sum_nums(max) # Defines method

	i = 1 # i starts at one because thats where the numbers start
	sum = 0 # sum starts at zero because we increment += 1 into sum

	while i <= max # i has to be <= max cause we are adding up to max
		
		sum += i # sum increments by i; first time is one, second time is two
		i += 1 # here we set the rate of which i increments at, we do this after += i because if we did it before we would get an entirely different result and our aim is to return 10 and 15
	end # end while loop
	return sum # return sum here and not in while loop because it exits method after return
end

puts sum_nums(4) # call method with one argument
puts sum_nums(5) # 

# Write a method factorial(num) that takes in a number num 
# and returns the product of all numbers from 1 up to 
# and including num

def factorial(num)
  i = 1
  times = 1
  
  while i <= num
    times *= i
    i += 1
  end
  return times

end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# Write a method reverse(word) that takes in a string word 
# and returns the word with its letters in reverse order.

def reverse(word) # defines the method with one param
	i = 0 # sets value at zero
	revered_string = "" # creates empty string to put reversed characters

	while i < word.length # while loop that sets condition to end after i exceeds the amount of word length
		char = word[i] # string character value stored into variable char corresponding with index value in i
		revered_string = char + revered_string # variable for string concatenation, we put char first because it puts each iteration of character in string before last in order thus reversing it.

		i += 1 # raises i value or index number by one
	end
	return revered_string # returns reversed string
end

puts reverse("cat")

### --- IS PALINDROME CHALLENGE --- ###

# Write a method is_palindrome(word) that takes in a string word 
# and returns the true if the word is a palindrome, false
# otherwise. A palindrome is a word that is spelled the same forwards
# and backwards.



def is_palindrome(word) # define method with one parameter
  i = 0 # set i to zero for first index value is 0
  reversed_string = "" # create empty string to store concatenated string
  
  while i < word.length # run while loop as long as word length is greater than i value which increments by one
    char = word[i] # this stores each iteration of string characters
    reversed_string = char + reversed_string # this concatenates string characters in reverse order
    i +=1 # raises increment by one 
  end # end loop
  return reversed_string == word # if statement that evaluates whether new string equals original
end

puts is_palindrome("racecar")  # => true; this calls method with 1 argument
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

