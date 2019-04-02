# Write a method that takes iterates through an array of strings
# and returns the strings that are less than 6 characters in length
# and start with the letter e but not both.

def strange_words(words)
    i = 0
    new_array = []
    new_string = ""

    while i < words.length

    	new_string = words[i]

        if (words[i].length < 6 ) && !(new_string[0] == "e") || (new_string[0] == "e") && !(words[i].length < 6 )
            new_array << words[i] 
        end
        i += 1
    end
    return new_array

end

p strange_words(["taco", "eggs", "excellent", "exponential", "artistic", "cat", "eat"])


