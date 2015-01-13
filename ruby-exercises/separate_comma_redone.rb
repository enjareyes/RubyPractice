
=begin
Write a method `separate_comma` which takes an integer as its input and 
returns a comma-separated integer as a string. Like this:

separate_comma(1000)    # => "1,000"
separate_comma(1000000) # => "1,000,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"
=end


def seperate(number)
	original_num = []
	new_number = []

	number = number.to_s.split("")

	number.each do |x|
		x= x.to_i
		original_num << x
	end

	while original_num.length > 3
		3.times { new_number << original_num.pop }
		# new_number << original_num.pop
		# new_number << original_num.pop
		# new_number << original_num.pop
		new_number << ","
	end

	if original_num.length <= 3
		3.times { new_number << original_num.pop }
	end

	new_number = new_number.join("")
	new_number = new_number.reverse

	puts new_number
end

seperate(1000000)
seperate(10000000)
seperate(100000000)
seperate(100000000000)



#or i could do something with modulo 3 ?




