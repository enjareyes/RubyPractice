
the_array=[1, 52, 35, 20, 14, 29]
second_array = [2, 100, 10, 9000]
empty_array = []

def largest_num(array)

	big_num = array[-1]
	new_array = []

	array.each do |number|
		
		if number > big_num
			big_num = number
		else
			new_array<< number
		end

	array = new_array	
	end

puts big_num
end

largest_num(the_array)


largest_num(second_array)

largest_num(empty_array)