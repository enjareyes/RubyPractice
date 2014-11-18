
array = Array(1..100)

def fizzbuzz(number_array)
	number_array.each do |x|
		if x % 15 == 0
			puts "Fizzbuzz"
		elsif x % 3 == 0
			puts "Fizz"
		elsif x % 5 == 0
			puts "Buzz"
		else 
			puts x
		end
	end 
end

fizzbuzz(array)