=begin 
Write a new class called Kim that has 3 methods, 
happy_birthday, change_job, and name_change. Initialize this 
new class with an instance of class Profile and use your methods 
that you created with attr_ to change the values of the instance variables.

Now, make a new class called Kim that initializes an instance of Profile 
in its initialize method. Doing this allows you to access to the methods 
you created in class Profile. Make methods called happy_birthday, change_job, 
and name_change that access the instance variable in Profile and change them. 
If you are confused about this instruction, it would probably be useful 
for you to read ch. 3 to 3.3.2 in *The Well-Grounded Rubyist (either edition)* 

The ability to use classes in concert is a powerful tool and one you will 
be using often!

If this sounds tricky, think about how initialize a class and call methods. 
It's easy to over-complicate this when you're first starting, but it will 
seem a lot easier if you break it down.

You may want to complete challenge [3-drawer-debugger](../3-drawer-debugger) 
first if you are having problems with this last step.
=end


class Profile

  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    print "Profile Info"
    # 10.times do 
    #   print "." 
    #   sleep 0.1
    # end

    puts 
    puts
    puts "Name: #{@name}" 
    puts "Age: #{@age}" 
    puts "Occupation: #{@occupation}"
    puts
    puts "----End of profile ----"
    puts
  end

end



class UpdatingProfile

	def initialize(whos_profile)
		@persons_profile = whos_profile
		@name = @persons_profile.name
		@age = @persons_profile.age
		@occupation = @persons_profile.occupation
	end

	def happy_birthday(new_age)
		@age = new_age
		@persons_profile.age = new_age 
		puts
		puts "PROFILE UPDATED"
		@persons_profile.print_info
	end

	def change_job(new_job)
		@occupation = new_job
		@persons_profile.occupation = new_job 
		puts
		puts "PROFILE UPDATED"
		@persons_profile.print_info
	end

	def name_change(new_name)
		@name = new_name 
		@persons_profile.name = new_name 
		puts
		puts "PROFILE UPDATED"
		@persons_profile.print_info
		#do I need to somehow alter the original profile and not just this variable
	end

end


enjas_profile = Profile.new
enjas_profile.name = "Enja Reyes"
enjas_profile.occupation = "Barista"
enjas_profile.age = 23
enjas_profile.print_info


#newprofile
enjas_profile_new = UpdatingProfile.new(enjas_profile)
enjas_profile_new.change_job("Professor of Poop")
#enjas_profile.print_info




