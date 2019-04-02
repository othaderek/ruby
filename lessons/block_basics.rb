### MASTERING BLOCKS ###

# do 
# 	puts "Echo!" # We can put any ruby code we want here
# end

# We can't run the above block independently
# It has to be run with a method call

3.times do
	puts "Echo!"
end

# we call the .times method on a number, in this case 3
# The convention is to use do/end

# When you have a single line block instead of using do/end
# you can use curly braces

3.times() {puts "Echo!"} # This does the same thing as above

# The convention is to use multiple lines of code if needed; otherwise do single lines


# orders = []
# 5.times do
# 	orders << Order.new("customer", 10)
# end

# puts orders

# |block_parameter| this goes after do in a code block and is called a block parameter
# The .times method will pass the iteration number to the block
# This can be stored in a block parameter

3.times do |n|
	puts "#{n} Echo!"
end

# Single line form of above code

3.times { |n| puts "#{n} Echo!" }

class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total
	end

	def to_s
		"#{email}: $#{total}"
	end
end

class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total
	end

	def to_s
		"#{email}: $#{total}"
	end
end

orders = []
5.times do |n|
	orders << Order.new("customer#{n}@example.com", n * 10)
end

puts orders


# This method starts at 1 and goes up to 3
1.upto(3) { |n| puts "#{n} Echo" } # REMEBER THE CODE BLOCK IS NOTE A METHOD PARAMETER

# now using the upto() method that takes integer param

class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total
	end

	def to_s
		"#{email}: $#{total}"
	end
end

orders = []
1.upto(5) do |n|
	orders << Order.new("customer#{n}@example.com", n * 10)
end

puts orders



