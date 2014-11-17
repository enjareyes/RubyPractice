

=begin
	
Table of contents, revisited. Rewrite your table of contents pro- gram on page 36. 
Start the program with an array holding all of the information for your table of contents 
(chapter names, page numbers, and so on). 
Then print out the information from the array in a beautifully formatted table of contents.

=end

contents = ["Chapter One", 1, "Chapter Two", 10, "Chapter Three", 21]

line_width = 50

puts ("Table of Contents".center(line_width))

contents.each do |x|
	if x != x.to_i
		print (x.ljust(line_width/2)) 
 	else x == x.to_i
 		x = x.to_s
  	puts (x.rjust(line_width/2))
	end
end