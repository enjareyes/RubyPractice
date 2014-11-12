
#How many seconds in a day?

hours = 24

def seconds_in_hour(x)
	x = x * 60
	puts x
end

seconds_in_hour(hours)

#1440 woohoo!! 




#How many seconds in a week?

days = 7

def seconds_in_week(x)
	seconds_in_hour(x * 24) 
end

seconds_in_week(days)

#10080 dang that was frustrating..




#How many hours in a year?

days = 365

def hours_in_day(x)
	x = x * 24
	puts x
end

hours_in_day(days)

#8760 yay!





#how many seconds in a year? and how many seconds in your age (rounding to year)

puts "Hello! What is your age?"
age = gets.chomp
age = age.to_i

def age_to_seconds(x)
	x = (x * 365 * 1440)
end

seconds_in_age = age_to_seconds(age)

puts "There are #{seconds_in_age} in #{age} years."

