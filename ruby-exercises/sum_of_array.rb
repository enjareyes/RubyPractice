=begin
Exercise: Calculating the array total
Write a method total which takes an Array of numbers as its input and returns their 
total (sum).  For example,

total([1,2,3])      # => 6
total([4.5, 0, -1]) # => 3.5
total([-100, 100])  # => 0

=end

addmeup = [2, 4, 6, 8]   #20
whataboutme = [10, 15, 300]


def sum_the_array(array)

	index = array.length - 1 #3
	total = array[index] #array[3] = 8
	index = (index-1)

	while index > -1
		total = total + array[index] # 8+6=14   # +4=18   # +2=20
		index = index-1 
	end

	puts total
end

sum_the_array(addmeup)
sum_the_array(whataboutme)






def sum_of_array(array)
	number = 0

	array.each do |x|
		number = number + x
	end

	puts number
end

sum_of_array(addmeup)






