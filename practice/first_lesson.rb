# Like Python you can use hash for comments as shown here	

puts "Hello world" #instead of "puts" (like we use in python) we use puts
puts "Goodbye"

# Numbers Lecture for Ruby

puts 1 + 1
puts 10 - 8
puts 5 * 5

# Returns as a whole number 
puts 9 / 2

# This version puts 4.5 because we added the decimal
puts 9 / 2.0

puts 6 + 4 / 2.0
puts (6 + 4) / 2.0

# Modulo gives the remainder only
puts 14 % 5 # This will give a remainder of 4

# The operators are (+,-,*,/,%)

##### Comparison Operators Lecture #####

# Comparison operators (==, !=, , <, >, <=, >=)
# Comparison operators will output true or false

puts 3 == 3 # true
puts 2 == 3 # false

### Boolean Data Type Lecture ###

# Operations:
#   ! (not)
#   && (and)
#   || (or)
puts true 
puts false
puts true || false 
puts true && false

puts !false || false

puts 6 > 0 && 6 % 2 == 0

### puts, print, and p lecture

# Puts formats strings
puts "hi"

puts "\tyou\n"
puts "hello"

### Strings lecture ###

puts "Hello World".length
# Indeces similar to Python
puts "Hello"[0]

# Concatenation similar to Python too

puts "hello " + "world" + ", how are u"

str = "hello"

puts str.length

"Hey" + "you"

### Variable Lecture 1 ###

location = "SF"
puts location

### Summary of Variable lecture. You can store data in variables 
### and then use operators to manipulate that data

num = 12
is_even = num % 2 == 0

puts is_even
 
### Methods

# defining a method
def sayMessage
	puts "hey"
	puts "sup"
end	

# Call this method
puts "Before method call"
sayMessage
puts "After method call"
### Very similar to python functions def, name method in first line

### Method params lecture


def say_hello(person) # This time we name the method and add a parameter "person"
	puts "Hello " + person + "." 
end	

say_hello("Otha")

# Now when we call the method we add a parameter of our choosing during the call in parenth
# We can add as many parameters as we like

def say_goodbye(person1, person2)
	puts "Goodbye " + person1 + " and" + person2 + "."
end  

say_goodbye("Otha", "Leah") # We place "arguments" in the parentheses of a method call

### Method return values

def calc_average(num1, num2) # Here we declare the method and the amount of params it takes
	sum = num1 + num2 # first arg of this method calculates the sum of the 2 parameters and saves it into a variable
	avg = sum / 2.0  # this line takes the sum variable and divides it by 2 and stores to new variable
	return avg # this prints the value stored in avg.
end

# The return keyword lets a method call evaluate to a value

result = calc_average(10, 5) # You can store the method result into a variable to be used later

puts result + 1

### Conditionals ###

num = 42

if num == 0
	puts "Positive"
else
	puts "Negative"
end

### Conditionals 2 ###

num_2 = 2

if num_2 == 3 # Checks is num_2 value is equal to 3; false
	puts "This number is 3"
elsif num_2 == 2 # checks if it is equal to 2; true.
	puts "This number is 2" # puts this string and breaks loop
else
	puts "I only know number 2 or 3!!"
end


### Conditionals practice question###

### Write a method either_only(number) that takes in a number 
### and returns true if the number is divisible by either 3 or 5,
### but not both. The method should return false otherwise.

def either_only(number)
  if number % 5 == 0 && number % 3 == 0 
    puts "false"
  elsif number % 5 == 0 || number % 3 == 0
    puts "true"
  else 
    puts "false"
  end
end

puts either_only(9)
puts either_only(15)
### could also be this solution

def either_only(number)
	if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
		return true
	else
		return false
	end
end

puts either_only(9)
puts either_only(15)

### Write a method larger_number(num1, num2) that takes in two numbers
### and returns the larger of the two numbers.

def larger_number(num1, num2)
  if num1 > num2
    return num1
  else
    return num2
  end
end

puts larger_number(100, 200)

### Write a method longer_string(str1, str2) that takes in 
### two strings and returns the longer of the two strings. 
### In the case of a tie, the method should return the first string.

def longer_string(str1, str2)
  str_len_1 = str1.length
  str_len_2 = str2.length
  
  if (str_len_1 > str_len_2) || (str_len_1 == str_len_2)
    puts str1
  else
    puts str2
  end
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"

### Loops Lecture ##

# Here we have a method 
# Within the method is a while loop
# 
def repeatHello() # define name of method with no params
	counter = 1 # Set value of counte
	while counter <= 5 # Sets condition of while loop
		puts "Hello"
		counter += 1 # Adds 1 and stores to counter variable
	end
end

repeatHello() # This line calls the method

def printNums()
	i = 0
	while i <= 100
		puts i

		i += 1
	end
end

#

printNums()
puts "----------------"

### Method while loop with 2 parameters

def printNums(min, max)
	i = min
	while i <= max
		puts i

		i += 1
	end
end

printNums(1, 4)
puts "----------------"
printNums(11, 20)

### Method while loop with 3 parameters


def printNums(min, max, step)
	i = min
	while i <= max
		puts i

		i += step
	end
end

printNums(1, 4, 1)
puts "----------------"
printNums(11, 20, 2)

### Iterating through strings

str = "hello"
puts str[1]

# The above code can also look like this

str = "hello"
i = 1
puts str[i]

# With while loop

str = "hello" # str variable declared

i = 0 # i variable set, counter for while loop

while i <= 5 # while loop with condition, counter less than or equal to 5
	puts str[i] # puts str with index of i
	i += 1 # counter going up by 1
end # breaks loop  as soon as i is no longer less than or equal to i

### ---ex--- ###

str = "hello world" # str variable set

i = 0 # i variable set as starting index point in this case first letter of "hello world"

while i <  str.length # while loop with condition; while i is less than or equal to the strings length. length relates to amount of characters
	puts str[i] # puts the letter  corresponding with that iteration
	i += 1 # goes up by increments of one
	
end

### ---ex--- ###
# As a method

def printChars(str) # Define/ name method, name param
	i = 0 # Set stating index value
	while i < str.length # While loop condition; index value less than str length
		puts str[i] # Puts string index value corresponding letter
		i += 1 # Increments by 1
	end # Ends while loop
end # Ends method

printChars("I Love You") # Calls method with params


### BREAK AND NEXT LECTURE ###

# break - immediately exit loop
# next - skips to the next iteration

i = 1 # Sets counter initial value
while i <= 10 # while loop condition;
	puts i # puts i
	if i == 5 # if statement nested in while loop with condition
		break # break if i value equals 5
	end # ends if statement
	puts i # puts i value after loop
	i += 1 # counter incrememnting by 1
end

puts "Loop end"


 i = 1 # Sets initial counter value
 while i <= 10 # while condition; i less or e to 10
 	puts i # puts i value
 	if i == 5 # nested if conditional, i is equal to 5
 		i += 1 # increment plus one
 		next # then skip to next iteration
 	end # end if statement
 	puts i # puts i after if statement
 	i += 1 # increments plus 1
 end # ends while loop

 ### Count E Exercise ##
# Write a method count_e(word) that takes in a string word 
# and returns the number of e's in the word.

# What data type do you want to return; number
# Where do you want to store the number; variable named count
# Use a loop to iterate through a string 
# Store a number value for every iteration of e

def count_e(word)

	count = 0 # Count variabe tracks the number of e's
	i = 0 # i varable iterates through string

	while i < word.length # while word length is less than variable iteration
    char = word[i] # create variable that temporarily stores charachter, word[i] refers to character in string
    if char == "e" # if the value in char is equal to e
    	count += 1 # we add 1 to count variable
    end # loop ends
    i += 1 # iterates at a rate of plus 1
	end # ends loop
	return count # returns count value at the end of while loop
end # end of method

puts count_e("movie") # => 1
puts count_e("excellent") # => 3


### NOTE: is equal to operator == can evaluate a value within
### a variable whether its a number or string.
### one may use is equal to operator (==) as a part of a condition
### in opening line of if statement


### ------------- ### ------------ ###
# Write a method count_a(word) that takes in a string word
# and returns the number of a's in the word. 
# The method should count both lowercase (a) and uppercase (A)

def count_a(word)
  
  count = 0 # Set to count number of a in word; in conditional
  i = 0 # Set to iterate through word
  
  while i < word.length # code runs while index value less than word character amount
    char = word[i] # creates a variable to store letter iterations
    if char == "a" || char == "A"
      count += 1
    end
    i += 1
  end
  return count
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

# EXPLAINED

# To do this we have to create a method that iterates through
# a string and counts the amount of instances it encounted 
# a letter a, upper case or lower case
# For this to work we need to first definie the method
# with one parameter. then the first two lines of code should be
# the variables. one to count the iterations of the while loop
# the other to count the iterations of a characters
# we set a while loop with i being less than the length of "word"
# which is the parameter of the method
# then WITHIN the while loop create a variable (char) that stores the 
# string character in it. word[i] returns the value, in this case the
# string based on the index value which happens to be limited by the
# length of the word parameter. 
# within the while loop creat an if loop that checks if char value
# is equal to (==) "a" OR (||) "A"
# if it is we raise the count by an increment of 1
# if loop ends
# while loop ends
# we return count 
# we end the method. after all of this we call the method with the
# arguments of our choosing and it should output the amount of a's it 
# counts 

### COUNT VOWELS EXERCISE ###
# Write a method, count_vowels(word), that takes in a 
# string word and returns the number of vowels 
# in the word. Vowels are the letters a, e, i, o, u.

def count_vowels(word)
	i = 0
	count = 0
	while i < word.length
		vowels = word[i]
		if vowels == "a" || vowels == "e" || vowels == "i" || vowels == "o" || vowels == "u"
			count += 1
		end
		i += 1
	end
	return count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

### How do we shorten the repetitiveness of the logical or (||)


