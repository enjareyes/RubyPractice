=begin
	
Chris Pine Chap 10.5

Expanded english_number. First, put in thousands; it should return 'one thousand' 
instead of (the sad) 'ten hundred' and 'ten thousand' instead of 
'one hundred hundred'. Now expand upon english_number some more. 
For example, put in millions so you get 'one million' instead of 
'one thousand thousand'. Then try adding billions, trillions, and so on.

=end

def english_number(number)

	if number < 0
		return "Enter a number that is not negative"
	end

	if number == 0 
		return "zero"
	end


	number_string = ""

	ones = [ "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

	tens = [ "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", 
					 "eighty", "ninety"]

	teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", 
					 "seventeen", "eighteen", "nineteen"]


	left = number

	current = left / 1000000000000
	left = left - (current * 1000000000000)

	if current > 0
		trillions = english_number(current)
		number_string = number_string + trillions + " trillion"
		if left > 0
			number_string = number_string + " "
		end
	end

	current = left / 1000000000
	left = left - (current * 1000000000)

	if current > 0
		billions = english_number(current)
		number_string = number_string + billions + " billion"
		if left > 0
			number_string = number_string + " "
		end
	end

	current = left / 1000000
	left = left - (current * 1000000)

	if current > 0
		millions = english_number(current)
		number_string = number_string + millions + " million"
		if left > 0
			number_string = number_string + " "
		end
	end

	current = left / 1000
	left = left - (current * 1000)

	if current > 0
		thousands = english_number(current)
		number_string = number_string + thousands + " thousand"
		if left > 0
			number_string = number_string + " "
		end
	end

	current = left / 100
	left = left - (current * 100)


	if current > 0
		hundreds = english_number(current)
		number_string = number_string + hundreds + " hundred"
		if left > 0
			number_string = number_string + " "
		end
	end

	current = left / 10
	left = left - current*10

	if current > 0
		if ((current == 1) and (left > 0))
			number_string = number_string + teens[left -1]
			left = 0
		else
			number_string = number_string + tens[current-1]
		end

		if left > 0 
			number_string = number_string + " "
		end
	end

	current = left
	left = 0

	if current > 0
		number_string = number_string + ones[current-1]
	end

	number_string

end

puts english_number(11)
puts english_number(71)
puts english_number(521)
puts english_number(20699)
puts english_number(6009040567)
puts english_number(5000000)
puts english_number(9000000000000)







