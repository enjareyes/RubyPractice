=begin 

Exercise: Calculating the array mode
Write a method mode which takes an Array of numbers as its input and returns an Array 
of the most frequent values. If there's only one most-frequent value, it returns a 
single-element Array. For example:

mode([1,2,3,3])         # => [3]
mode([4.5, 0, 0])       # => [0]
mode([1.5, -1, 1, 1.5]) # => [1.5]
mode([1,1,2,2])         # => [1,2]
mode([1,2,3])           # => [1,2,3], because all occur with equal frequency


cycle through
keep track of how many times a number occurs

=end

mode_array = [1, 2, 3, 4, 8, 4, 10, 4, 8, 15] #4
no_mode_array = [1, 2, 3, 4]


def mode(array)

counter_hash = {}

	array.each do |x|
		if counter_hash.has_key?(x) #checking if counter_hash already contains the key
			counter_hash[x] += 1 #if it does then it just adds 1 to the existing value
		else
			counter_hash[x] = 1 #if the hash doesn't have the key-it adds it with a value of 1
		end
	end

counter_hash.values.sort

maxvalues = counter_hash.values.max
modes = counter_hash.select {|k, v| v == maxvalues} 
#above-selecting |k, v| pairs from counter_hash that match the block of code (v==maxvalues)
puts modes


end

mode(mode_array)
mode(no_mode_array)



