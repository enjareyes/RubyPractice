=begin
 
Exercise: Find the longest + shortest string in an array
Write a method longest_string which takes as its input an Array of Strings and returns 
the longest / shortest string in the Array.

For example:

'zzzzzzz' is 7 characters long
longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"

If the input Array is empty it should return nil.

=end

string_array = ["hi", "hey", "zummmmmmbaaaaaaa", "hellooooo"]


#longest and shortest using sort


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


#only longest and not using sort


def longest_string(array)

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

longest_string(string_array)

puts "--" *10


#only shortest and not using sort


def shortest_string(array)

	if array == []
		puts "nil"
		return
	end

	nada = []
	shortest = array[0]

	while array != []

		array.each do |x|
			if x.length < shortest.length
				nada << shortest
				shortest = x
			else 
				nada << x
			end
		end
		
	shortest = shortest
	shortest_string_length = shortest.length

	return puts "The shortest string is #{shortest} with #{shortest_string_length} letters"
	
	end
end

shortest_string(string_array)




