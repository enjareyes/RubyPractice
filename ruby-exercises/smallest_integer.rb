=begin
Exercise: Find the smallest integer in an array
Write a method smallest_integer which takes as its input an Array of integers and returns the smallest integer in the Array.

For example:

smallest_integer([1, 2, 3])       # => 1
smallest_integer([0, -10, 10])    # => -10
smallest_integer([-10, -20, -30]) # => -30

If the input Array is empty smallest_integer should return nil.
smallest_integer is a method that takes an array of integers as its input
and returns the smallest integer in the array
+array+ is an array of integers
smallest_integer(array) should return the smallest integer in +array+
If +array+ is empty the method should return nil

=end

an_array = [2, 18, 24, 16, 3, 9, 7, 22]
empty = []

def smallest_integer(array)

	if array == []
		return puts "nil"
	end

	array = array.sort
	puts "The smallest number in the array is #{array[0]}"

end

smallest_integer(an_array)
smallest_integer(empty)

puts "--" * 10


def another_smallest_integer(array)

	if array == []
		return puts "nil"
	end


	smallest = array[0]
	nada = []

		array.each do |x|
			if x <= smallest 
				nada << smallest
				smallest = x
			else
				nada << x
			end
		end
		puts "Smallest integer in the array is #{smallest}"
end

another_smallest_integer(empty)
another_smallest_integer(an_array)









