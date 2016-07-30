def translate(text)
	consonants= %w{b c d f g h j k l m n p q r s t v w x y z }
	vowels= %w{a e i o u }

	# split words from string into individual array items
	words = text.split.map do |word| 
		# if vowels are in the first char of word add "ay"
        if vowels.include?(word[0])
          word + "ay"
        # if first 2 letters are "qu" add "quay"
        elsif word[0..1] == "qu"
          word[2..-1] + "quay"
        # if first 3 letters are "sch" add "schay"
        elsif word[0..2] == "sch"
          word[3..-1] + "schay"
       	# if first 3 letters are "squ" add "squay"
        elsif word[0..2] == "squ"
          word[3..-1] + "squay"
        # if consonants are in the 1st 3 chars of the word, move consonants and add "ay"
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
          word[3..-1] + word[0..2] + "ay"
        # if consonants are in 1st 2 chars of word, move 1st 2 consonants and add "ay" 
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
          word[2..-1] + word[0..1] + "ay"
        # if first char of word has consonants, move 1st char and add "ay"
        elsif consonants.include?(word[0])
          word[1..-1] + word[0] + "ay"
        end
    end
# make it back into one big string
words.join(" ")
end