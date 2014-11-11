=begin
Eventually, someone thought it would be terribly clever if putting a smaller number 
before a larger one meant you had to subtract the smaller one. 
As a result of this development, you must now suffer. 
Rewrite your previous method to return the new-style Roman numerals 
so when someone calls roman_numeral 4, it should return 'IV'.
=end

def modern_roman

	puts "Enter a number between 1 and 3000 to change into a modern roman numeral or enter 'quit'"
	number = gets.chomp
	roman = ""

	while number != "quit"
		number = number.to_i

		if ((0 <= number) && (number <= 3000))
			
			if number >= 1000
				roman = ("M" * (number / 1000))
				number = number % 1000

			elsif number >= 900
				roman = roman + "CM"
				number = number % 900

			elsif number >= 500
				roman = roman + "D"
				number = number % 500

			elsif number >= 100
				roman = roman + ("C" * (number / 100))
				number = number % 100

			elsif number >= 90
				roman = roman + "XC"
				number = number % 90

			elsif number >= 50
				roman = roman + ("L" * (number / 50))
				number = number % 50

			elsif number > 10
				roman = roman + ("X" * (number / 10))
				number = number % 10

			elsif number == 9
				roman = roman + "IX"
				number = number % 9

			elsif number >= 5
				roman = roman + "V"
				number = number % 5

			else
				roman = roman + ("I" * number)
				puts "Your modern roman numerals is:    #{roman}"
				number = 3001
				roman = ""
			end

		else 
			puts "*" * 44
			puts "Please choose a number between 1 and 3000 or type 'quit' to end"
			number = gets.chomp
		end
	end
end

modern_roman

