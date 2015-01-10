=begin 

FizzBuzz is a classic programming exercise (and fairly common interview question).

The usual example asks the developer to write a program which prints out each number 
from 1 to 100.  But for multiples of 3 print 'Fizz' instead of the number and for 
multiples of 5 print 'Buzz'.  For numbers which are multiples of both 3 and 5 print 
'FizzBuzz'.

This exercise has a little twist.  Write a method called `super_fizzbuzz` which takes 
as its input an `Array` of integers.

It should return a "fizzbuzzed" `Array`, i.e., the array is identical to the input 
with the following substitutions:

1. Multiples of `3` should be replaced with the string `"Fizz"`
2. Multiples of `5` should be replaced with the string `"Buzz"`
3. Multiples of `15` should be replaced with the string `"FizzBuzz"`
```

For example:

```ruby
super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]

super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

=end


def super_fizz_buzz(array)

	fizzbuzzed = []

	array.each do |x|
		if x % 15 == 0
			x = "Fizzbuzz"
			fizzbuzzed << x
		elsif x % 3 == 0
			x = "Fizz"
			fizzbuzzed << x
		elsif x % 5 == 0
			x = "Buzz"
			fizzbuzzed << x 
		else
			fizzbuzzed << x
		end
	end

	print fizzbuzzed
	return fizzbuzzed

end

super_fizz_buzz([2, 4, 15, 3, 6, 8, 12, 9, 5])


#Translated RSPEC

puts super_fizz_buzz([3, 5, 15]) == ["Fizz", "Buzz", "Fizzbuzz"]
puts super_fizz_buzz([1, 2, 3]) == [1, 2, "Fizz"]
puts super_fizz_buzz([15, 5, 3, 1]) == ["Fizzbuzz", "Buzz", "Fizz", 1]












