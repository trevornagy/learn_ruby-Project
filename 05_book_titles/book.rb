class Book
	attr_reader :title

	def title=(new_title)
		little_words = ["the", "and", "an", "for", "if", "of", "a", "or", "over", "in"]
		@title = new_title.split.each_with_index.map{|new_title, index| little_words.include?(new_title) && index > 0 ? new_title : new_title.capitalize }.join(" ")
	end
end
