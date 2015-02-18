=begin
Exercise: Calculating the median of an array of numbers
Write a method median which takes an Array of numbers as its input and returns the median value.

You might want to look up the definition of "median."

For example,

median([1,2,3])      # => 2
median([4.5, 0, -1]) # => 0
median([-100, 100])  # => 0.0

=end
odd_array = [1, 2, 4, 8, 16]
another_odd_array = [1, 2, 4, 8, 13, 7, 16]

even_array = [2, 4, 6, 8]
second_even_array = [1, 3, 17, 22, 24, 59]

def median(array)

	length = array.length
	index = length-1

	if length%2 == 0
		middle = (index/2).to_i
		first = array[middle]
		second = array[middle+1]
		total = ((first + second).to_f)/ 2
		puts total
	else
		midnum = (index/2)
		middle = array[midnum]
		puts middle
	end

end

median(odd_array)
median(another_odd_array)

median(even_array)
median(second_even_array)

