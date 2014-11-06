=begin
Chris Pine 10.3

Write a shuffle method that takes an array and returns a totally shuffled version. 
As always, you’ll want to test it, but testing this one is trickier: 
How can you test to make sure you are getting a perfect shuffle? 
What would you even say a perfect shuffle would be? Now test for it.

=end

unshuffled_array = ["apple", "banana", "banana", "carrots", "durian", "eggplant", "fennel"]

def shuffle(original, shuffled_array=[])

	if original == []
		puts shuffled_array
		return shuffled_array
	end

	new_unshuffled = []

	random_index = rand(original.length)
	rand_element = original[random_index]

	temp_shuffled = []

	original.each do |element|
		if element != rand_element
			new_unshuffled << element
		else 
      if temp_shuffled.include?(element)
					new_unshuffled << element
			else 
				temp_shuffled << rand_element
			end
		end
	end
	shuffled_array = shuffled_array + temp_shuffled



	shuffle(new_unshuffled,shuffled_array)

end	

shuffle(unshuffled_array)