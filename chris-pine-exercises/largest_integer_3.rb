
numbers_array = [10, 15, 99, 52, 48, 16]

numbers_array_2 = []


def largest_int(array)

	if array == []
		return nil
	end

	bignum = array[-1]

	array.each do |x|
		if bignum<x
			bignum = x
		end
	end

	return bignum 

end

puts largest_int(numbers_array)
puts largest_int(numbers_array_2)