=begin 
Define four methods which correspond to the four basic arithmetic operations:

add
subtract
multiply
divide
They should accept either integers or floating point numbers as input. 
Divide should perform floating point division.

For example,

add(10,2)      # => 12
subtract(10,2) # => 8
multiply(10,2) # => 20
divide(10,2)   # => 5.0 (*not* 5)

=end

def add(x, y)
	x+y.to_f
end

def subtract(a, b)
	a-b.to_f
end

def multiply(x, y)
	x*y.to_f
end

def divide(a, b)
	a/b.to_f
end

puts add(4,4.2)
puts subtract(1,6)
puts multiply(2,16.25)
puts divide(12,3)


