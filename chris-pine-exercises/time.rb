
#chris Pine chapter 12


karma = Time.new # Current date and time.
puts "Current time = #{karma}"




time = Time.new # The moment we ran this code. 
time2 = time + 60 # One minute later.

puts time
puts time2



#You can also make a time for a specific moment using Time.local: 
puts Time.local(2000, 1, 1) # Y2K.
puts Time.local(1991, 8, 27) # When I was born.

=begin
	
You’ll notice the -0400 and -0500 in these times. That’s to account for the difference 
between the local time and Greenwich mean time (GMT, the One True Time Zone, dontcha know). 
This can be because of being in a different time zone or daylight saving time or who knows 
what else. So, you can see that I was born in daylight saving time, while it was not 
daylight saving time when Y2K struck. (By the way, the parentheses are to group the parameters 
to local together; otherwise, puts might start thinking those are its parameters.) The more 
parameters you add to local, the more accurate your time becomes.
On the other hand, if you want to avoid time zones and daylight saving time altogether 
and just use GMT, there’s always Time.gm.

=end

puts Time.gm(1991, 8, 27) 

=begin 
You can compare times using the comparison methods (an earlier time is less than a later time), 
and if you subtract one time from another, you’ll get the number of seconds between them.
=end


