=begin 

Billion seconds one more time!!

One billion seconds! Find out the exact second you were born (if you can). 
Figure out when you will turn (or perhaps when you did turn) one billion seconds old. 
Then go mark your calendar.
=end

bday = Time.gm(1991, 8, 27, 15, 10)
armandos_bday = Time.gm(1980, 7, 19, 10, 00)

def one_billion_seconds(birthday)
	one_billion = birthday + 1000000000
	puts "You turn one billion seconds on.... #{one_billion}"
end

one_billion_seconds(bday)
one_billion_seconds(armandos_bday)