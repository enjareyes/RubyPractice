#Center / Justify / Line Width

=begin
	
center, adds spaces to the beginning and end of the string to make it centered. 
However, just like you have to tell the puts method what you want it to print 
and you have to tell the + method what you want it to add, 
you have to tell the center method how wide you want your centered string to be.	
So if I wanted to center the lines of a poem, I would do it like this:

=end

puts ""
puts ""

line_width = 60
puts ("What a Lovely Day".center(line_width))
puts ("__________________".center(line_width))

puts ("")
puts  ("There once was a day".center(line_width))
puts ("That was sunny".center(line_width))
puts ("Not gray".center(line_width))
puts ("And it was".center(line_width))
puts ("Because".center(line_width))
puts ("Of ENJA THE GREAT!".center(line_width))
puts ("")
puts ("")
puts ("")
puts ("")

=begin

The other two string-formatting methods we’ll look at today are ljust and rjust, 
which stand for left justify and right justify. 
They're similar to center, except they pad the string with spaces on the left and right sides, respectively. 
Let’s take a look at all three in action:


line_width = 40
str = "La dee da"
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

=end


line_width = 60
puts ("HOW TO AMAZING".center(line_width))
puts ("By Enja the Great".center(line_width))
puts ""
puts ""
puts ("Table of Contents".center(line_width))
puts ("__________________".center(line_width))
puts ""
puts "Chapters".ljust(line_width/2) + ("Pages".rjust(line_width/2))
puts "--------".ljust(line_width/2) + ("-----".rjust(line_width/2))
puts ""
puts ("Beginning the Awesomeness".ljust(line_width/2)) + ("1".rjust(line_width/2))
puts ("Continuing the Magnificence".ljust(line_width/2)) + ("10".rjust(line_width/2))
puts ("Where are my Pants?!".ljust(line_width/2)) + ("21".rjust(line_width/2))
puts ("Don't Mix your Drinks O_O".ljust(line_width/2)) + ("40".rjust(line_width/2))










