
=begin 
Refactor the statements within the method body of shout_backwards into one 
line of code. It should still be clear what the method's behavior is even after 
you refactor. 

TODO: Refactor for elegance


def shout_backwards(string)
  all_caps  = string.upcase
  backwards = all_caps.reverse
  result    = backwards + "!!!"
	return result
end
 
=end

string_example = "hellooooo"

def shoutbackwards(string)
	puts (string.upcase).reverse + "!!!"
end

shoutbackwards(string_example)
 


=begin 
Break down the convoluted statement within squared_primes so that it reads more smoothly.
It should be much clearer what the method is doing after you refactor.

 # FIXME: This is convoluted. Refactor for clarity.


def squared_primes(array)
  array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
end


=endch

numbas = [2, 4, 5, 7, 8, 9]
 
def squared_primes(array)
	primes = []

	array.each do |number|
		if number % #something == 0
			primes << number
		end
	end

	primes.each do |prime|
		prime = prime**2
	end

	puts primes
end

squared_primes(numbas)





# Driver code... don't edit. This should print a bunch of trues.


#puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]



