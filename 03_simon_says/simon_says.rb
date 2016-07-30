def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text, amount = 2)
	([text] * amount).join(" ")
end

def start_of_word(text, num_letters)
	text[0..num_letters-1]
end

def first_word(text)
	text.split.first
end

def titleize(text)
	little_words = ["the", "and", "an", "for", "if", "of", "a", "or", "over"]
	text.split.each_with_index.map{|text, index| little_words.include?(text) && index > 0 ? text : text.capitalize }.join(" ")
end