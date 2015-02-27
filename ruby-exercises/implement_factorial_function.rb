=begin 
Exercise: Implement the factorial function
Write a factorial method which takes as its input a non-negative integer and calculates 
the factorial of that number.

The factorial of a number is the product of all integers from 1 up to that number. 

For example:

factorial(5) == 5 * 4 * 3 * 2 * 1 == 120
The factorial of 0 is defined to be 1.


=end

# 4 * 3 * 2 * 1

def factorial(num)

  if num < 0
  	return puts "You need to choose a positive number"
  elsif num <= 1
  	return puts "The factorial is 1"
  else #num > 0
  	array = []
  	array << num
  	
  	while num>1
  		num = num-1
  		array << num
  	end

  	num = array.inject(:*)
  end

  return puts num

end

factorial(4)


#now without array and inject: 


def factorial_2(num)
	if num<0
		puts "You need to choose a positive number"
	elsif num <= 1
		puts "The factorial is 1"
	else num > 1
	 total = 1

   (1..num).each do |x|
    total *= x  #total = total * x
    end

    puts total
	end

end

factorial_2(4)

