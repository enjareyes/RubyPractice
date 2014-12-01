=begin 

Chris Pine 12.6

Birthday helper! Write a program to read in names and birth dates from a text file.
It should then ask you for a name. You type one in, and it tells you when that 
person’s next birthday will be (and, for the truly adventurous, how old they will be). 

The input file should look something like this:

Armando Reed, July 19, 1980
Audrey Harding, August 17
Enja Reyes, August 27, 1991
Fumie Reyes, August 1, 1994
Jennifer Parsons, August 21, 1970

You’ll probably want to break each line up and put it in a hash, using the name 
as your key and the date as your value. In other words:

birth_dates['The King of Spain'] = 'Jan 5, 1938'

(You can store the date in some other format if you prefer.)

Though you can do it without this tip, your program might look prettier if you 
use the each_line method for strings. It works pretty much like each does for arrays, 
but it returns each line of the￼multiline string one at a time (but with the line 
endings, so you might need to chomp them). Just thought I’d mention it....

=end


puts "Who's birthday would you like to look up?"
name = gets.chomp

while (name == name.downcase) || (name == name.upcase)
	puts "Please capitalize the first and last name."
	name = gets.chomp
end

def birthday(name)

	bday_hash = {}

	File.open('birthday_helper.txt', "r") do |text_file| #text_file is the entire file
		text_file.each_line do |line| #line.clasee =>  line is a string
			line = line.chomp.split(",") 
			#above we are spliting the string where there are commas into an array of words

			newname = "#{line[0]}" #selecting the element in the array that is the name
			bdizzles_info = "#{line[1]},#{line[2]}" #selecting the birthday elements in the array
			bday_hash[newname] = bdizzles_info #adding it to the empty birthday hash
		end
	end

 puts name + " :" + bday_hash[name] 
end

birthday(name)




