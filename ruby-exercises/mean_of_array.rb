=begin
Exercise: Calculating the mean of an array of numbers
Write a method mean which takes an Array of numbers as its input and returns the average 
(mean) value as a Float.

For example,

mean([1,2,3])      # => 2.0
mean([4.5, 0, -1]) # => 1.1666666666666667
mean([-100, 100])  # => 0.0

=end

an_array = [2, 4, 6, 8] # 20 / 4 = 5

second_array = [1, 20, 28] #49 / 3

def mean_1(array)
	divide_by = array.length

	index = array.length-1 #3
	sum_of_array = array[index]
	index = index-1

	while index > -1
		sum_of_array = sum_of_array + array[index]
		index = index-1
	end

	mean = (sum_of_array / divide_by).to_f
	puts mean

end


def mean(array)
	# length = array.length

	counter = 0

	array.each do |x|
		counter = counter + x
	end

	total = counter/(array.length)
	puts total

end

mean_1(an_array)
mean_1(second_array)

mean(an_array)
mean(second_array)





