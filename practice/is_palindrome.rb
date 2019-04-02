
# Write a method that checks if a word is a palindrome

def is_palindrome(word)

	return word == word.reverse

end

puts is_palindrome(gets.chomp)

