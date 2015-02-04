=begin 
Numbers to English Words

Summary:

Write a program that takes a number and returns it's English equivalent.
Start with numbers up to 100. If you feel like stretching, go as high as you would like.

Examples:

in_words(4)         # => "four"
in_words(27)       # => "twenty seven"
in_words(92)       # => "ninety two"


Chris Pine, *[Learn to Program](https://pine.fm/LearnToProgram/)*

You definitely don't want to have to check all the possible cases by hand each time, 
so make sure you are testing a bunch of irregular numbers.

=end



def in_words(number)

	ones = {1 => "one" , 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",}
	teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
	tens = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6=> "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
	hundreds = {1 => "one hundred", 2 => "two hundred", 3 => "three hundred", 4 => "four hundred", 5 => "five hundred", 6 => "six hundred", 7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"}

	original_num = number
	english = []

	if number >= 100
		huns = number / 100
		how_many_hundreds = hundreds[huns]
		english << how_many_hundreds
		number = number % 100
	end

	if number >= 20
		ten = number / 10
		how_many_tens = tens[ten]
		english << how_many_tens
		number = number % 10
	end

	if number >= 10
		teens = teens[number]
		english << teens
	end

	if number > 0
		one = number / 1
		how_many_ones = ones[one]
		english << how_many_ones
	end

	english = english.join(" ")
	puts "Your number #{original_num} is....  #{english}"
	return english

end


in_words(116)
in_words(224)

puts in_words(389) == "three hundred eighty nine"
puts in_words(644) == "six hundred fourty four"




