=begin 

# U2.W4: Pair Cipher Challenge

## Learning Competencies
- Identify and explain what code is doing
- Automate repetitive tasks using loops
- Decompose a problem into smaller, easier to solve components
- Identify and rewrite repetitive code

## Summary
The N.S.A. just broke Kim Jong Un's cipher that he's been using to give instructions 
to his military commanders! We wrote the following program to decipher the messages. 
As the N.S.A.'s best programmer on staff, your job is to refactor the code. 

You should work with a person in your accountability group to complete this challenge.

In this challenge, you'll work with a pair to refactor some existing code to make 
it more readable and follow ruby best practices. Then you will compare your 
solution with the other pair(s) in your accountability group. 

## Release 0: Run the code 
See what the expected output is.

## Release 1: Write tests 
Use [driver test code]
(https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md). 
What can you rely on? What can't you rely on? 

## Release 2: Read the code
Identify what each line of code is doing. It's located in the 
[my_solution.rb](my_solution.rb) file. 
Write comments next to or above each line with an explanation.
Really focus on breaking each step down. You want to understand every line. 

NOTE: You do not need to understand each part of lines 68 and 69. 
These lines use regular expressions that look for one or more of any digit. 
You don't have to refactor these two lines. 

## Release 3: [Refactor (by rewriting) the initial solution]
(https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md)

  - Clean up the variable names. 
  - The original code used a hard-coded hash to do the encryption. Can you create a simple algorithm instead? 
  The original shift was by 4 characters. What would happen if it was changed to 10? 

Write your comments on what each thing is doing. 
If you have difficulty, go into IRB and play with the methods.

=end



=begin 

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   
            "f" => "b",   
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  # This is technically a shift of four letters...Can you think of a way to automate 
  # this? Is a hash the best data structure for this problem? What are the pros and 
  # cons of hashes?

  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end

    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end


# Driver Test Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Find out what Kim Jong Un is saying below and turn it into driver test code as well. 
#Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

=end


# Your Refactored Solution


	# cipher_hash = {}

	# key = alphabet[y]
	# value = alphabet.shift

	# #fix it so it goes through all the letters and starts over again at a

	# alphabet.each do |x| #selecting the letter
	# 	cipher_hash[key] = value
	# 	value = alphabet.shift
	# 	key = alphabet[y-1]
	# end

	# puts cipher_hash


	# message.each do |coded_character|
	# 	if cipher_hash.has_key?(coded_character)
	# 		english = cipher_hash[coded_character]
	# 		solved_message << english
	# 	elsif coded_character == "@" || coded_character == "#" || coded_character == "$" || coded_character == "%"|| coded_character == "^" 
	# 		solved_message << " "
	# 	else (0..9).to_a.include?(coded_character) # Try this out in IRB. What does   " (0..9).to_a "    do?
 #      solved_message << coded_character
	# 	end
	# end


#refactored again...


	def north_korean_cipher(input, jump_forward)

	message = input.downcase.split("") 
	alphabet = ("a".."z").to_a #creating an array alphabet in order
	y = jump_forward #how many letters ahead the cypher code is
	solved_message = []

	message.each do |x| #selecting each character in the coded message
		if alphabet.include?(x) #checking if the alphabet includes that letter
			index = alphabet.index(x)	#if it does then get the index for the letter
			english = alphabet[index-y]	#move the index back 4 spaces to see what letter it really is!
			solved_message << english #add the real letter to the solved message array
		elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
			english = " " #if it's not a letter, but a symbol then it is a space
			solved_message << english #adding a space to the solved array to separate words
		else
			solved_message << x #if it's a number or something else then print it as is 
		end
	end

	print solved_message.join("") #print the solved code!

end


blah = ("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
north_korean_cipher(blah, 4)


#hash was not easier




