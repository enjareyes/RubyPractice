
=begin 
Chris Pine 12.6
Party like it’s roman_to_integer 'mcmxcix'! Come on, you knew it was coming, 
didn’t you? It’s the other half of your roman_numeral 1999 method. Make sure 
to reject strings that aren’t valid Roman numerals.


def roman_to_integer(roman)

	roman_values = {
		"i" => 1,
		"v" => 5,
		'x' => 10,
		"l" => 50,
		"c" => 100,
		"d"	=> 500,
		"m" => 1000 }

	total = 0
	prev = 0
	index = roman.length-1

	while index >= 0

		c = roman[index].chr.downcase
		index = index - 1
		value = roman_values[c]

		if !value 
			puts "This is not a roman numeral"
			return
		end

		if value < prev
			value = value * -1
		else
			prev = value
		end

		total = total + value

	end

	total

end

puts (roman_to_integer("MXVI"))

=end

def integer(roman)

roman_values = {
	"i" => 1,
	"v" => 5,
	"x" => 10,
	"l" => 50,
	"c" => 100,
	"d" => 500,
	"m" => 1000
}

index = roman.length-1
total = 0
what = 0

	while index >= 0

	roman_numeral_key = roman[index].chr.downcase
	index = index-1
	value = roman_values[roman_numeral_key]

	if !value
		return "That is not a roman numeral"
	end

	if value < what
		value = value * -1
	else
		prev = value
	end

	total = total + value

	end

	total

end

puts integer("MMMCXVII")









































