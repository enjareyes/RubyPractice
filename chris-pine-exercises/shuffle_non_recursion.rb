=begin
Chris Pine 10.3

Write a shuffle method that takes an array and returns a totally shuffled version. 
As always, you’ll want to test it, but testing this one is trickier: 
How can you test to make sure you are getting a perfect shuffle? 
What would you even say a perfect shuffle would be? Now test for it.

=end

unshuffled_array = ["apple", "banana", "banana", "carrots", "durian", "eggplant", "fennel", "grapes", "grapes"]


def shuffle(original)

	shuffled_array = []

	while original != []

		random_index = rand(original.length)
		rand_element = original[random_index]
		new_original = []
		temp_shuffled = []

		original.each do |element|
		  if element != rand_element
				new_original << element
		  else 
		  	if temp_shuffled.include?(element)
		  		new_original << element
		  	else
 					temp_shuffled << rand_element
		 		end
			end
		end
			original = new_original
			shuffled_array = shuffled_array + temp_shuffled
	end

	return shuffled_array

end


puts shuffle(unshuffled_array)


