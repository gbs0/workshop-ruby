# TODO: Count the number of repeat frequency word
def counter(text, word)
	result = []
	counter = 0
	text_splitted = text.split
	text_splitted.map do |contained_word|
		unless contained_word != word
			result.push(contained_word, counter+=1)
		end
	end
	p result
end

counter("a cat stash on rat cat cat", "cat")