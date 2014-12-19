=begin

Chris Pine 13.6

Interactive baby dragon. Write a program that lets you enter commands such as feed and 
walk and calls those methods on your dragon. Of course, since you are inputting just strings, 
you will need some sort of method dispatch, where your program checks which string was 
entered and then calls the appropriate method.	

=end

class InteractiveBabyDragon

	attr_reader :name, :age #same as what's commented out below. 

	def initialize(name)
		@name = name
		@asleep = false
		@age = 1
		@stuff_in_belly = 5
		@stuff_in_intestine = 2 # He doesn't need to go.
		puts "Your baby dragon, #{name}, has been born.."
	end

	# def name
	# 	@name
	# end

	# def age
	# 	@age
	# end

	def feed
		puts "You fed #{@name}."
		@stuff_in_belly = @stuff_in_belly + 2
		puts "Your dragon sure is tired after eating..."
		passage_of_time
	end

	def walk
		@stuff_in_belly = @stuff_in_belly-1
		passage_of_time
		puts "What a nice walk you've taken your dragon on! What next?"
	end

	def sleep
		@asleep = true
		puts "#{@name} has slept and now."
		passage_of_time
	end


	private

	def poop
		@stuff_in_intestine = 0
		puts "What a relief"
		passage_of_time
	end

	def hungry?
		@stuff_in_belly == 2
	end

	def passage_of_time
		@age = @age + 1

		if hungry?
			puts "Your dragon suuuuure could use a snack"
		end

		if (@stuff_in_belly < 10) && (@stuff_in_belly > 1)
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		elsif @stuff_in_belly == 10
			puts "Umm, you can overfeed a dragon you know..."
		elsif @stuff_in_belly > 10
			puts "You have overfed your dragon."
			puts "#{@name} blew fire on your for making them fat and giving them low self esteem."
			puts "You are dead. The end"
			exit
		elsif @stuff_in_belly == 1 #dragon is starving!
			puts "Oh no, your dragon MUST eat!"
			@stuff_in_belly = @stuff_in_belly - 1
		else
			puts "Your dragon was not fed and ate you instead."
			exit
		end

		if (@stuff_in_intestine <= 9) && (@stuff_in_intestine >= 8)
			puts "Uh oh- your dragon is doing a poopy dance.."
		end

		if @stuff_in_intestine >= 10
			puts "Your dragon filled up with poop and exploded. The End."
			exit
		end
	end
end






puts "What would you like to name your dragon?"
name = gets.chomp

dragon = InteractiveBabyDragon.new(name)


puts "What would you like #{name} to do now? Walk, eat, sleep, or poop?"
action = gets.chomp

## matchig user typed actions with method actions
while dragon.age < 20 do

	if action == "eat"
		dragon.feed
	end

	if action == "walk"
		dragon.walk
	end

	if action == "sleep"
		dragon.sleep
	end

	if action == "poop"
		dragon.poop
	end

	puts "What would you like #{name} to do now? Walk, eat, or sleep?"
	action = gets.chomp
end

if dragon.age == 20
	return "Your dragon has gotten old and senile. He accidently burnt you to a crisp."
	exit
end








