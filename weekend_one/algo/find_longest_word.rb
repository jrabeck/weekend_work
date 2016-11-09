# def find_longest_word(sentence)
# 	@words_and_lengths = {}
# 	words = sentence.split
	
# 	words.each do |word|
		
# 		@words_and_lengths[word] = word.length
		
# 	end
# 	@words_and_lengths = @words_and_lengths.sort_by { |word, length| length }
	
# 	@words_and_lengths = @words_and_lengths.pop
# 	@words_and_lengths[0]
	
# end



def find_longest_word(sentence)

	words = sentence.split

	longest_word = {}
	longest_word[:word] = ""
	longest_word[:length] = 0

	words.each do |word|
		current_word_length  = word.length

		if current_word_length > longest_word[:length]
			longest_word[:length] = current_word_length
			longest_word[:word] = word
		end

	end

	return longest_word[:word]

end


# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end