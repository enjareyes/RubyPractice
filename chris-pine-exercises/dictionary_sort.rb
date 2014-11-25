=begin
Chris Pine - Chap 10

Your sorting algorithm is good for general-purpose sorting, 
but when you sort strings, you are using the ordering of the 
characters in your fonts (called the ASCII codes) rather than true 
dictionary ordering. In a dictionary, case (upper or lower) is 
irrelevant to the ordering. So, make a new method to sort words 
(something like dictionary_sort). Remember, though, that if I give 
your program words starting with capital letters, it should return 
words with those same capital letters, just ordered as you’d find 
in a dictionary.

A < Z < a < z 

Capital letters have a smaller ASCII value than the lowercase
ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz

=end

words_array = ["Apple", "apple", "Bob", "baby", "zebra", "Baby", "YOYO"]

def dictionary_sort(unsorted_array)
	sorted_array = []

	while unsorted_array != []

		current_smallest = unsorted_array.pop
		new_unsorted = []

		unsorted_array.each do |word|

			if word.downcase < current_smallest.downcase
				new_unsorted << current_smallest
				current_smallest = word 

			elsif word.downcase == current_smallest.downcase

				if word < current_smallest 
					new_unsorted << current_smallest
					current_smallest = word 
				else
					new_unsorted << word
				end
			else
				new_unsorted << word
			end

		end
		sorted_array << current_smallest

		unsorted_array = new_unsorted
	end

	return sorted_array

end

puts dictionary_sort(words_array)

