=begin 
Chris Pine 13.6

Orange tree. Make an OrangeTree class that has a height method that returns its height and 
a one_year_passes method that, when called, ages the tree one year. Each year the tree 
grows taller (how- ever much you think an orange tree should grow in a year), and after 
some number of years (again, your call) the tree should die. For the first few years, it 
should not produce fruit, but after a while it should, and I guess that older trees produce 
more each year than younger trees...whatever you think makes the most sense. And, of course, 
you should be able to count_the_oranges (which returns the number of oranges on the tree) 
and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you 
how delicious the orange was, or else it just tells you that there are no more oranges to 
pick this year). Make sure any oranges you don’t pick one year fall off before the next year.

=end

class OrangeTree

	def initialize
		@height = 4
		@orange_count = 0
		@tree_age = 2
	end

	def height
		puts "Your orange tree is #{@height} feet tall!"
	end

	def one_year_passes 
		if @tree_age <= 3
			@height = @height + 2
			@tree_age = @tree_age + 1
		elsif (@tree_age < 30) && (@tree_age > 3) 
			@height = @height + 2
			@orange_count = @orange_count + rand(9)
			@tree_age = @tree_age + 1
			puts "Your tree is now #{@tree_age} years old!"
		else
			puts "Your tree is dead"
		end

	end

	def count_the_oranges
		if @tree_age > 3
			puts "Your tree has #{@orange_count} oranges!"
		else
			puts "Baby orange tree is not producing fruit yet, maybe next year!"
		end
	end


	def pick_an_orange
		if @orange_count > 0
			@orange_count = @orange_count - 1
			puts "You have picked an orange. What a delicious orange!"
		else
			puts "Oh no, there are no oranges to pick!"
		end
	end

end


my_orange_tree = OrangeTree.new
my_orange_tree.height
my_orange_tree.one_year_passes
my_orange_tree.count_the_oranges
my_orange_tree.one_year_passes
my_orange_tree.count_the_oranges
my_orange_tree.one_year_passes
my_orange_tree.height
my_orange_tree.count_the_oranges
my_orange_tree.one_year_passes
my_orange_tree.height
my_orange_tree.one_year_passes
my_orange_tree.height
my_orange_tree.count_the_oranges
my_orange_tree.pick_an_orange
my_orange_tree.count_the_oranges
