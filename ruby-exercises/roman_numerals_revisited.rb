=begin 

Old-school Roman numerals. In the early days of Roman numerals, the Romans didn’t 
bother with any of this new-fangled sub- traction “IX” nonsense. No sir, it was 
straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. 

Write a method that when passed an integer between 1 and 3000 (or so) returns a 
string containing the proper old-school Roman numeral. In other words, old_roman_numeral 
4 should return 'IIII'. Make sure to test your method on a bunch of different numbers. 
Hint: Use the integer division and modulus methods on page 37.
For reference, these are the values of the letters used:

I =1 V=5 X=10 L=50 C=100 D=500 M=1000
=end


puts "Please enter an integer between 1 and 4000 to see your old school roman numeral!"
number = gets.chomp
number = number.to_i

def old_school_roman(num)

	if (num >= 1000)  #&& (num <= 3000)
		thousands = num / 1000 
		num = num % 1000
		roman = "M" * thousands
	end

	if num >= 500
		five_hundreds = num / 500 
		num = num % 500
		roman = roman + ("D" * five_hundreds)
	end

	if num >= 100
		hundreds = num / 100
		num = num % 100
		roman = roman + ("C" * hundreds)
	end

	if num >= 50
		fifties = num / 50
		num = num % 50
		roman = roman + ("L" * fifties)
	end

	if num >= 10
		tens = num / 10
		num = num % 10
		roman = roman + ("X" * tens)
	end

	if num >=5
		fives = num / 5
		num = num % 5
		roman = roman + ("V" * fives)
	end

	if num > 0
		ones = num / 1
		num = num % 1
		roman = roman + ("I" * ones)
	end

		puts "Your roman numeral: #{roman}"
end

old_school_roman(number)












