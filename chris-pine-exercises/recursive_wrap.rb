
=begin
Chris Pine book Chap 10.2 


Remember the sorting program you wrote on page 65 where you asked for a list 
of words, sorted it, and then displayed the sorted list? 
The program was made much easier because you used the array’s sort method. 
But, like the Jedi who constructs his own lightsaber, you’ll exhibit a greater 
mastery if you write your own sorting method. It’s not easy, but this kind of 
problem solving is part of nearly every program you’ll write, 
so you’d best get your practice now.
In fact, try it twice: once using recursion and once without. With the recursion, 
you might need a wrapper method, a tiny method that wraps up another method into 
a cute little package, like this:

def sort(some_array) # This "wraps" recursive_sort. 
recursive_sort (some_array, [])
end

def recursive_sort(unsorted_array, sorted_array) 
# Your fabulous code goes here.
end

=end


words_array = ["monkey", "apple", "cracker", "monkey", "water", "elephant", "jazz"]

def recursive_sort(original_array, sorted_array=[], unsorted_array=[])

	if original_array == []
		puts sorted_array
		return sorted_array
	end
		
	current_smallest_word = original_array.pop

	original_array.each do |word|
		if word < current_smallest_word 
			unsorted_array << current_smallest_word
			current_smallest_word = word
		else
			unsorted_array << word
		end
	end

	sorted_array << current_smallest_word

	recursive_sort(unsorted_array, sorted_array)

end

recursive_sort(words_array)




