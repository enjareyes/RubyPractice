=begin 
Chris Pine 14.4

Program logger. Write a method called log that takes a string description of a block 
(and, of course, a block). Similar to the method do_self_importantly, it should puts a 
string telling you it started the block and another string at the end telling you it 
finished and also telling you what the block returned. Test your method by sending it a 
code block. Inside the block, put another call to log, passing a block to it. In other 
words, your output should look something like this:

Beginning "outer block"...

Beginning "some little block"...
..."some little block" finished, returning: 5

Beginning "yet another block"...
..."yet another block" finished, returning: I like Thai food!

..."outer block" finished, returning: false
end

=end 

$log_depth = 0

def log(block_description, &block)
	depth = "  " * $log_depth
	puts depth + "Starting the '#{block_description}' block now..."  

	$log_depth = $log_depth.to_i + 1
	returning = block.call
	$log_depth = $log_depth.to_i - 1
	
	puts depth + "The '#{block_description} block has finished running! Returning:"
	puts depth + returning.to_s

	puts depth + ("-" * 15)
end



log 'greetings' do

	log 'hellos' do
	  "hey there "
	end

	
	log 'farewells' do
		log 'inner farewells' do 
			"so looooong"
		end

	  0 == 0
	end


	7 + 7
end

=begin 

Better program logger. The output from that last logger was kind of hard to read, and 
it would just get worse the more you used it. It would be so much easier to read if it 
indented the lines in the inner blocks. So, you’ll need to keep track of how deeply nested 
you are every time the logger wants to write something. To do this, use a global variable, 
which is a variable you can see from anywhere in your code. To make a global variable, 
just precede￼your variable name with $, like so: $global, $nesting_depth, and 
$big_top_pee_wee. I

In the end, your logger should output code like this:

Beginning "outer block"... 
	Beginning "some little block"...
		Beginning "teeny-tiny block"... ...
		"teeny-tiny block" finished, returning: 
		lots of love
	..."some little block" finished, returning: 
	42
￼	Beginning "yet another block"...
	..."yet another block" finished, returning: 
	I love Indian food!
..."outer block" finished, returning:
true
￼

=end

