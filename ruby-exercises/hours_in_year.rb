
#How many hours in a year?

days = 365

def hours_in_day(x)
	x = x * 24
	puts x
end

hours_in_day(days)

#8760 yay!

#how many seconds in a day?

hours = 24

def seconds_in_hour(x)
	x = x * 60
	puts x
end

seconds_in_hour(hours)

1440 woohoo!! now how many seconds in a year?

seconds_in_day = 1440

def seconds_in_year(x)
	x = x * 365
	puts x
end

seconds_in_year(seconds_in_day)

#how many seconds in a year? and how many seconds in your age (rounding to year)

puts "Hello! What is your age?"
age = gets.chomp
age = age.to_i

def age_to_seconds(x)
	x = (x * 525600)
	x
end

seconds = age_to_seconds(age)

puts "There are #{seconds} in #{age} years."



