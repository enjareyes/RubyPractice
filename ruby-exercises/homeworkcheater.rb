=begin

In this challenge, you will create a program that will output something 
to "turn in" to your teacher. Think of this as academic mad lib. It 
doesn't have to be good (as evidenced by the example below), and it can 
be as easy or challenging as you design it to be. Have fun and challenge 
yourself!

You will have to create your own tests for this challenge as well. 

For example:

def essay_writer(title, topic, date, thesis_statment, pronoun)
  # Your awesome code here!
end

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, 
"His most important contribution to history is that he founded the Tokugawa 
period, a peaceful time that lasted over 200 years.", male) 

#=> My Award-Winning Essay (or maybe "D"-worthy)!

The First Shogun

Ieyasu Tokugawa was an important person in 1603. He did a lot. 
I want to learn more about him. 
His most important contribution to history is that he founded the Tokugawa 
period, a peaceful time that lasted over 200 years. Tokugawa's contribution 
is important.

=end



def essay_writer(subject, birthdate, statement, death, sex)

	if sex == "male"
		sex = "He"
	else
		sex = "She"
	end

	puts "#{subject} was born in #{birthdate}, was a very important person. #{statement} #{sex} died in #{death}."

end

essay_writer("Britney Spears", "1990", "Her biggest hit was 'Hit Me Baby One More Time'.", "2080", "female")




