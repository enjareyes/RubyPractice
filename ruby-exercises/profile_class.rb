#U2.W6: Attr Methods
=begin
Step 1: refactor this code to move method assignments to 
attr_ attributes. Like we did with age. Lets pare down the superflous code.

Step 2: in profile_class_part2.rb file

=end


# first lets finish refactoring this code 
#(note that there is a way to add all of the variables like 
#:age on one line, how would we do that?):

class Profile

  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info

    print "Profile Info"
    10.times do 
      print "." 
      sleep 0.1
    end

    puts 
    puts
    puts "Name: #{@name}" 
    puts "Age: #{@age}" 
    puts "Occupation: #{@occupation}"
    puts
  end

end


enjas_profile = Profile.new
enjas_profile.name = "Enja Reyes"
enjas_profile.occupation = "Barista"
enjas_profile.age = 23
enjas_profile.print_info

# Release 5: Reflect

