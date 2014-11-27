=begin 

Chris Pine 13.3

(One thing to note here: in the previous code, we are first just defining what the Die 
class is by defining the methods initialize, roll, and showing. However, none of these 
is actually called until the very last line.) Very nice. Our dice are just about perfect. 
The only feature that might be missing is a way to set which side of a die is showing...
why don’t you write a cheat method that does just that? Come back when you’re done 
(and when you tested that it worked, of course). Make sure that someone can’t set the 
die to have a 7 showing; you’re cheating, not bending the laws of logic.

=end

class Die

dice = [Die.new, Die.new]

	def initialize
		roll
	end

	def roll
			@die = 1 + rand(6)
			@die2 = 1 + rand(6)
	end

	def showing
			puts @die
			puts @die2
	end

	#def cheat
	#	die = [4, 3] 		
	#	puts die
	#end

	def cheat
		@die = 1
		@die2 = 1 + rand(5)
		puts @die
		puts @die2
	end

end

puts Die.new.showing

puts Die.new.cheat





