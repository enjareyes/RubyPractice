=begin 

Chris Pine 10.5

“Ninety-nine Bottles of Beer on the Wall.” Using english_number and your 
old program on page 57, write out the lyrics to this song the right way this time. 
Punish your computer: have it start at 9999. (Don’t pick a number too large 
because writing all of that to the screen takes your computer quite a while. 
A hundred thousand bottles of beer takes some time; 
and if you pick a million, you’ll be punishing yourself as well!)

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

puts "How many bottles of beer are on the wall?"
bottles_on_wall	 = 9999
bottles = bottles.to_i

def howmanybottles(bottles)
	while bottles >= 0
		puts "OH #{english_number(bottles)} bottles of beer on the wall. #{english_number(bottles)} bottles of beer! Take one down, pass it around!"
		bottles = bottles - 1
	end
end

howmanybottles(bottles_on_wall)