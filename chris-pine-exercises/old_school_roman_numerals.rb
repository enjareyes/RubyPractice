=begin
	
In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled “IX” nonsense. 
No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. 
Write a method that when passed an integer between 1 and 3000 (or so) returns a string 
containing the proper old-school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. 
Make sure to test your method on a bunch of different numbers. 
Hint: Use the integer division and modulus methods on page 37 of Chris Pine.

I =1 V=5 X=10 L=50 C=100 D=500 M=1000

=end




def old_school

	puts "Enter a number between 1 and 3000 to change into an old roman numeral or hit 'quit' to leave"
	number = gets.chomp
	roman = ""

	while number != "quit"
		number = number.to_i

		if ((0 <= number) && (number <= 3000))
			
			if number >= 1000
				roman = ("M" * (number / 1000))
				number = number % 1000

			elsif number >= 500
				roman = roman + ("D" * (number / 500))
				number = number % 500

			elsif number >= 100
				roman = roman + ("C" * (number / 100))
				number = number % 100

			elsif number >= 50
				roman = roman + ("L" * (number / 50))
				number = number % 50

			elsif number >= 10
				roman = roman + ("X" * (number/10))
				number = number % 10

			elsif number >= 5
				roman = roman + ("V" * (number / 5))
				number = number % 5
			else
				roman = roman + ("I" * (number))
				puts "Your number in roman numerals is:    #{roman}"
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

old_school
