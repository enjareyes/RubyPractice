
=begin
Write a method `separate_comma` which takes an integer as its input and 
returns a comma-separated integer as a string. Like this:

separate_comma(1000)    # => "1,000"
separate_comma(1000000) # => "1,000,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"
=end

puts "Enter a number with less than or equal to 15 digits"
integer = gets.chomp

def separate_comma(integer)

	integer = integer.to_s

	if (integer.length <= 3)
		puts integer
	elsif (integer.length > 3) && (integer.length <= 6)
		integer = integer.insert(-4, ",")	#comma 3 from the end: index -4
		puts integer
	elsif (integer.length <= 9)
		integer = integer.insert(-4, ",")
		integer = integer.insert(-8, ",") #comma three from the end and 6 from the end
		puts integer
	elsif (integer.length <= 12)
		integer = integer.insert(-4, ",") 
		integer = integer.insert(-8, ",")
		integer = integer.insert(-12, ",") # 3 and 6 and 9 
		puts integer
	else # (integer.length <= 15)
		integer = integer.insert(-4, ",")
		integer = integer.insert(-8, ",")
		integer = integer.insert(-12, ",") 
		integer = integer.insert(-16, ",") # 3 and 6  9 and 12
		puts integer
	end

end

separate_comma(integer)



