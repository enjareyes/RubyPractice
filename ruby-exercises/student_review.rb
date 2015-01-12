=begin 

In this challenge you will work with a collection of simple `Student` objects.

Your program will create arrays of student data, and compute the average scores for 
each student.

1. Create an Array of Students

Create an array `students` with 5 Student objects (HINT: You'll need to create the 
student objects first). Each student should be assigned a `first_name`, and 5 test scores 
(scores are between 0 and 100) when it is created. The first Student should be named 
`"Alex"` with scores `[100,100,100,0,100]`. Once you've done this properly, the 
Release 0 tests should pass.

2. Average Scores
Compute and assign a score average and a letter grade to each student. Letter grades 
are based on the average (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and 
F for < 60%).

3. Linear Search

Write a [linear_search](http://en.wikipedia.org/wiki/Linear_search) method that searches 
the student array for a student's `first_name` and returns the position of that student 
if they are in the array. If the student is not in the array then the method should 
return -1.


## Release 4: Binary Search (Optional)
Write a [binary_search](http://en.wikipedia.org/wiki/Binary_search_algorithm) 
method that searches the student array for a student's first_name and returns the 
position of that student if they are in the array. If the student is not in the array 
then the method should return -1.  You can write a iterative (or recursive, if you are 
comfortable with that) version of `binary_search`.

=end

class Students

	attr_accessor :first_name, :scores

	def initialize(name, scores_array )
		@first_name = name
		@scores = scores_array 
	end

	def average
		total = 0

		@scores.each do |x|
			total = total + x 
		end
	
		@average_score = total / @scores.length
		return @average_score
	end

	def letter_grade
		if @average_score >= 90
			letter_grade = "A"
		elsif @average_score >= 80
			letter_grade = "B"
		elsif @average_score >= 70
			letter_grade = "C"
		elsif @average_score >= 60
			letter_grade = "D"
		else 
			letter_grade = "F"
		end

		@letter_grade = letter_grade

		return letter_grade
	end



end


alex = Students.new("Alex", [100,100,100,0,100])
jett = Students.new("Jett", [98, 78, 76, 45, 100])
bob = Students.new("Bob", [32, 14, 68, 98, 76])
bill = Students.new("Bill", [80, 85, 89, 8, 70])
jenny = Students.new("Jenny", [70, 90, 99, 100, 85])



students = [alex, jett, bob, bill, jenny]


	def linear_search()
		
	end





#DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# # Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# # Tests for release 2:

p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1




















