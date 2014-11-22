=begin 

Chris Pine 13.1

Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? 
Write a shuffle method that takes an array and returns a totally shuffled version. 
As always, you’ll want to test it, but testing this one is trickier: How can you 
test to make sure you are getting a perfect shuffle? What would you even say a perfect 
shuffle would be? Now test for it.

We did this above. Now: 
Extend the built-in classes. How about making your shuffle method on page 90 an 
array method? Or how about making factorial an integer method? Either way, remember 
to use self to access the object the method is being called on.

self = the instance of a class

=end

fruits = ["apple", "banana", "blueberry", "cherry", "grape", "orange", "papaya", "pineapple"]

class Array 

	def shuffle
		shuffled = self.shuffle
		puts shuffled
	end

end

puts fruits.shuffle