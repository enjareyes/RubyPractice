=begin 

To pass in a block to each_even, all we had to do was stick the block after the method. 
You can pass a block into any method this way, though many methods will just ignore the 
block. In order to make your method not ignore the block but grab it and turn it into a 
proc, put the name of the proc at the end of your method’s parameter list, preceded by an 
ampersand (&). So, that part is a little tricky but not too bad, and you have to do that 
only once (when you define the method). Then you can use the method over and over again, 
just like the built-in methods that take blocks, such as each and times. 
(Remember 5.times do...? What a cutie....)
If you get confused (I mean, there’s this each and its block inside each_even), just 
remember what each_even is supposed to do: call the block passed in with every other element 
in the array. Once you’ve written it and it works, you don’t need to think about what it’s 
actually doing under the hood (“which block is called when?”); in fact, that’s exactly why 
we write methods like this—so we never have to think about how they work again. 
We just use them.

class Array

	def each_even(&was_a_block__now_a_proc) # We start with "true" because
	  # arrays start with 0, which is even. 

	  is_even = true

		self.each do |object|
			if is_even
				was_a_block__now_a_proc.call object
			end

			# Toggle from even to odd, or odd to even.
			is_even = !is_even
		end 
	end

end


example 1:


[1, 2, 3, 4, 5].each_even do |odd_ball|
	puts "#{odd_ball} is NOT an even number!"
end


example 2:



fruits = ['apple', 'bad apple', 'cherry', 'durian']


fruits.each_even do |fruit|
 puts "Yum! I just love #{fruit} pies, don't you?"
end

=end