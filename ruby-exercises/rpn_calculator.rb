
=begin 
Create an RPNCalculator class which can evaluate expressions written 
in Reverse Polish notation.

It should have an evaluate instance method which takes as its input a valid 
RPN expression and returns its evaluation. Your calculator only needs to 
handle addition, multiplication, and subtraction (not division).
Operators and numbers should be separated by a single space.

For example,

calc = RPNCalculator.new

calc.evaluate('1 2 +')   # => 3
calc.evaluate('2 5 *')   # => 10
calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
calc.evaluate('70 10 4 + 5 * -') # => 0


1. convert string to array
2. Stack numers
3. find way to select operators / non-integers

=end



class RPNCalculator

	def initialize(string)
		@string = string
		@array = string.split(" ")
	end

	def operate
		new_array = []

		while @array != []

			x = @array.shift

			if (x != "+") && (x != "-") && (x != "*")
				new_array << x
			else 
				op = x
				a = new_array.pop
				b = new_array.pop
				z = eval("#{a} #{op} #{b}")
				new_array << z
			end
		end 
		puts "Your RPN problem: #{@string} solution is #{new_array[0]}"
	end

end # end of RPNCalculator class

calc = RPNCalculator.new("2 2 - 4 5 + + ")

calc.operate






