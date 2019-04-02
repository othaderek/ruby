# array enumerables
# 	# .each
# 	# .each_with_index
# string enumerables
# 	# .each_char
# 	# .each_char.with_index



months = ["Jan", "Feb", "Mar", "Apr"]
i = 0
while i < months.length ## This is the old way of iterating
	month = months[i]
	puts month

	i += 1
end

## THE CODE BELOW DOES THE SAME THING

months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month } # .each take a block of code as parameters; this is called a "block parameter"
								     # month parameter behaves like a variable; on every iteration it changes from one to the next
   								  	 #IF YOU EVER WANT TO USWE A SINGLE LINE OF CODE IN YOU BLOCK USE THIS

months = ["Jan", "Feb", "Mar", "Apr"]
months.each do |month|
	puts month
	puts "~~~~~~~~~~~~" # This goes between each element returned
end   					# IF YOU EVER HAVE MULTIPLE BLOCKS OF CODE USE THIS



sentence = "Hello World"

sentence.each_char do |char| 
	puts char
end


months = ["Jan", "Feb", "Mar", "Apr"]
months.each_with_index do |month, idx|
	puts month
	puts idx
	puts "~~~~~~~~~~~~" # This goes between each element returned
end 


sentence = "Hello World"

sentence.each_char.with_index do |char, idx| 
	puts char
	puts idx
	puts "~~~~~~~~~~~"
end


