=begin
Write a method print_triangle which takes at its input an integer representing 
the number of rows to print, and prints out a right triangle consisting of * 
characters, one line per row.

For example, print_triangle(5) should print out:

*
**
***
****
*****

And print_triangle(2) should print out:

*
**
If we pass in 0 it should print nothing (not even an empty line).
print_triangle(rows) prints out a right triangle of +rows+ rows consisting 
of * characters +rows+ is an integer

For example, print_triangle(4) should print out the following: 

*
**
***
****

=end


def print_triangle(rows)

  (1..rows).each do |x|
  	puts "*" * x
  end

end

print_triangle(10)





