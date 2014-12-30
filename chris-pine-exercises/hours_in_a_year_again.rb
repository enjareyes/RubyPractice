
=begin
Write a program that calculates and outputs the:
1. Hours in a year
2. Minutes in a decade
=end

puts "How many years would you like to calculate the hours for?"
years = gets.chomp
years = years.to_i

def hours_in_year(years)
	#one_year = (365 * 24)   #hours_in_years = (one_year * years) 
	hours_in_years = ((365 * 24)* years)
	puts "There are #{hours_in_years} hours in #{years} years"

end

hours_in_year(years)


puts "How many decades would you like to calculate the minutes for?"
decades = gets.chomp
decades = decades.to_i

def minutes_in_decades(decades)
	#years = (decades * 10)   #hours = (years*8760)   #minutes = (hours*60)
	minutes = (((decades*10)*8760)*60)
	puts "There are #{minutes} minutes in #{decades} decade(s)"
end

minutes_in_decades(decades)