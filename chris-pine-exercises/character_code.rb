=begin

Chris Pine 12.5

Perhaps the most important and versatile is the [...] method. 
The first thing you can do with it is pass in a number and get the character 
at that position in the string. Well, you get the code for the character, anyway. 
Actually, it’s a bit strange at first:
=end


da_man = 'Mr. T' 
big_T = da_man[4] 

puts big_T
puts ?T
puts 84.chr


# => 84 
# => 84 
# => T


=begin 
The character code for a capital T is 84. If all you want is the code for a 
specific character, you can precede it with a question mark, and if you have 
an integer and want its corresponding character, you can use the chr method. 
The question mark trick is particularly useful for comparisons. If you pass in 
a negative index, it counts from the end of the string.
=end

prof = 'We tore the universe a new space-hole, alright!' 
puts prof[12, 8] #puts the 12th spot and go 8 more spaces
puts prof[12..20] #puts from the 12th spot to the 20th
puts

# =>universe
# =>universe



#Method is checking to see if the last 4 characters of a filename are .AVI

def is_avi?(filename) 
	filename.downcase[-4..-1] == '.avi'
end

# All caps which is why we included .downcase in method. Is this an .avi file?
puts is_avi?('DANCEMONKEYBOY.AVI')

# Hey, I wasn't even 2 at the time... Is this an avi.file?
puts is_avi?('toilet_paper_fiasco.jpg')


# =>true
# =>false




