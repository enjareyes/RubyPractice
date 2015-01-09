=begin

Implement a method called times_table which takes as its input an integer and 
prints out a times table with that number of rows.
The numbers can be separated by any spaces or tabs, but each row must be on a new line. 
This means it's ok if the columns don't line up.

For example, times_table(5) should print the following out to the screen:

1   2   3   4   5
2   4   6   8  10   
3   6   9  12  15   
4   8  12  16  20   
5  10  15  20  25

Again, you don't need to worry about the spacing between columns. The point of the 
exercise is to understand the logic, not master the formatting. You should be at least 
one space/tab between the numbers, though, otherwise it won't look like a times table!

=end

def times_table(rows)

	(1..rows).each do |x|
		puts
		(1..rows).each do |y|
			xy = x * y
			print "  #{xy} "
		end
	end

end

times_table(4)


puts "" * 10
puts "--" * 10


def times_table_2(rows)

	start = 1

	(start..rows).each do |x|
		print x
	end

	while start <= (rows+1)
		start = start + 1
		puts start

		puts

		(start..rows).each do |y|
			print (start * y)
		end
	
	end

end

times_table_2(4)



















