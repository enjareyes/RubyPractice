=begin
	
Grandfather clock. Write a method that takes a block and calls it once for each hour that 
has passed today. That way, if I were to pass in the block:

do
	puts 'DONG!'
end

It would chime (sort of) like a grandfather clock. Test your method out with a few 
different blocks. Hint: You can use Time.new.hour to get the current hour. However, 
this returns a number between 0 and 23, so you will have to alter those numbers in order 
to get ordinary clock-face numbers (1 to 12).
	

	dong = Proc.new do
		puts "DONG!"
	end

	def grandfather_clock(dong_proc)
		current_hour = Time.new.hour

		if current_hour <= 12
			current_hour.times do
				dong_proc.call
			end
		else #current_hour > 12
			current_hour = current_hour - 12
			current_hour.times do
				dong_proc.call
			end
		end
	end

grandfather_clock(dong)

=end


def grandfather_clock(&dong_block)
	current_hour = Time.new.hour

	if current_hour <= 12
		current_hour.times do 
			dong_block.call
		end
	else
		current_hour = current_hour - 12
		current_hour.times do 
			dong_block.call
		end
	end
end


grandfather_clock do 
	puts "Dong"
end



# def do_until_false(first_input, some_proc)
# 	input = first_input
# 	output = first_input

# 	while output
# 		input = output
# 		output = some_proc.call input
# 	end

# 	input
# end


# build_array_of_squares = Proc.new do |array|
# 	last_number = array.last

# 	if last_number <= 0
# 		false
# 	else
# 		array.pop                             # Take off the last number...
# 		array.push last_number*last_number 		# ...and replace it with its square...
# 		array.push last_number-1              # ...followed by the next smaller number.
# 	end
# end


# always_false = Proc.new do |just_ignore_me| 
# 	false
# end


# puts do_until_false([5], build_array_of_squares).inspect





