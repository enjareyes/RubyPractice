=begin
 
Exercise: Find the longest string in an array
Write a method longest_string which takes as its input an Array of Strings and returns the longest String in the Array.

For example:

'zzzzzzz' is 7 characters long
longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"

If the input Array is empty longest_string should return nil.
longest_string is a method that takes an array of strings as its input
and returns the longest string +array+ is an array of strings
longest_string(array) should return the longest string in +array+
If +array+ is empty the method should return nil

=end

string_array = ["hi", "hey", "zummmmmmbaaaaaaa", "hellooooo"]

def longest_and_shortest_string(array)

  if array == []
  	return puts "nil"
  end

array = array.sort_by {|x| x.length}

shortest = array[0]   
shortest_length = shortest.length
longest = array[-1]
longest_length = longest.length

puts "The longest string in the array is #{longest} with #{longest_length} letters"
puts "The shortest string in the array is #{shortest} with #{shortest_length} letters"

end

longest_and_shortest_string(string_array)


puts "--" * 10


def longest_string_2(array)

	if array == []
		return puts "nil"
	end

		longest_string = array[0]
		not_longest = []

		array.each do |x|
			if x.length > longest_string.length
				not_longest << longest_string
				longest_string = x
			else
				not_longest << x
			end
		end
		long_length = longest_string.length

		return puts "Longest string is #{longest_string} with #{long_length} letters"

end

longest_string_2(string_array)


puts "--" *10

def shortest_string(array)



end

shortest_string(string_array)




