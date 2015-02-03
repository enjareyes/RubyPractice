=begin 

Translate user stories into an Ruby object (using a class). 
If you aren't sure what a user story is, use the power of google to do some research. 
Also make sure to practice using your new `assert` knowledge!

  - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of 
  flavors that represent pez so it's easy to start with a full pez dispenser.
  - As a pez user, I'd like to be able to easily count the number of pez remaining in a 
  dispenser so I can know how many are left.
  - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
  - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor 
  for later.
  - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I 
  know the order of the flavors coming up.
=end



class Pez

	attr_accessor :flavors
	attr_reader   :how_many

	def initialize(*flavors)
		@how_many = flavors.length
		@flavors = flavors 
		@pez_dispenser = @flavors

		puts "You've created a pez dispenser! It contains these pez:"
		list_flavors
	end


	def count_pez #counts pez in dispenser
		@how_many = 0

		@pez_dispenser.each do |x|
			@how_many = @how_many + 1
		end

		puts "You have #{@how_many} pez in your dispenser"
		@how_many
	end

	def take_pez_out#removes to eat
		if @how_many == 0
			puts "The pez dispenser is empty you fatty!!"
		else
			in_hand = @pez_dispenser.shift
			@how_many = @how_many-1
			puts "You've taken out your #{in_hand} pez and eaten it! Now you have #{@how_many} pez"
			true
		end

	end

	def add_pez(flavor_adding) #puts pez in dispenser
		@how_many = @how_many + 1
		@pez_dispenser << flavor_adding
		puts "Great! You've added a #{flavor_adding} pez to your dispenser. Now you have #{@how_many} pez"
	end

	def see_flavors
		puts "Your pez flavors are:"
		list_flavors
	end

	private

	def list_flavors
		@pez_dispenser.each do |x|
			puts x
		end
		return @pez_dispenser
	end


end

enjas_pez = Pez.new('grape', 'blueberry', 'rasberry', 'apple', 'cherry')

# puts enjas_pez.count_pez == 5
# puts enjas_pez.take_pez_out("durian") != true #it doesn't contain durian 
# enjas_pez.add_pez("guava") #== ['grape', 'blueberry', 'rasberry', 'apple', 'cherry', 'guava']

puts '*' * 30
enjas_pez.count_pez 
enjas_pez.take_pez_out
enjas_pez.add_pez("guava") 
enjas_pez.add_pez("mango")
enjas_pez.see_flavors











