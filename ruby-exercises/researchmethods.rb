
=begin 
Person 1: Find Matching Data
Create a method `my_array_finding_method` that takes an `Array` and a letter 
as arguments and returns a new array of the words that contain that letter.

For example:

my_array_finding_method(i_want_pets, "t") #=> should return 
["want","pets","but"]


THEN

Create a method `my_hash_finding_method` that takes a `Hash` and number as 
arguments and returns a new array of pet names by age.

Ex.

my_hash_finding_method(my_family_pets_ages, 3) #=> should return 
["Hoobie", "Ditto"]
=end

names_array = ["amanda", "kelly", "brian", "jenn", "bobby", "lilly", "ziggy"]

def my_array_finding_method(array, letter)

	array.each do |x|
		if x.include?letter
			x = x.capitalize
			puts x
		end
	end

end

my_array_finding_method(names_array, "b")



puts "--" * 10



pets_hash = { "amanda" => 2, "bobby" => 4, "jean" => 6, "molly" => 4, "spunky" => 4, "billy" => 8}

def my_hash_finding_method(hash, age)

	hash.each do |x, y|
		if y == 4
			puts x.capitalize
		end
	end

end

my_hash_finding_method(pets_hash, 4)

puts "--" * 10

=begin
Person 2: Modify Existing Data

Two years have passed since I made these, so they need to be updated. I want 
the original data to change since I never plan on going back.

I recently got a new pet, but I still want another!
Create a `my_array_modification_method` that takes an array and number to be 
added to all internal numbers. (Because you can never have too many pets!) 

For example:

my_array_modification_method(i_want_pets, 1)
#=> ["I", "want", 4, "pets", "but", "only", "have", 3]

Then create a method that updates the ages in the hash. For Example:

my_hash_modification_method(my_family_pets_ages, 2)
#=> {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, 
"Annabelle" => 2, "Ditto" => 5}

=end

array_to_modify_integers = ["I", "have", 0, "pets", "and", "want", 1, "more"]

def my_array_modification(array, number)

new_array = []
	array.each do |x|
		if x.is_a? Integer
			x = (x + number)
			new_array << x
		else
			new_array << x
		end
	end
		print new_array
end

my_array_modification(array_to_modify_integers, 2)

puts 
puts "--" *10


def my_hash_modification(hash, number)

	hash.each {|key, value| hash[key] = value + number}
	print hash

end

my_hash_modification(pets_hash, 4)


puts 
puts "--" *10

=begin
Person 3: Sort Data

I want to create a sorting method that alphabetizes an array. I also 
want to create a sorting method that arranges the data in my hash by 
age (starting with the youngest first). I want to see what happens when 
I do this, but I don't want it to modify the existing data.

my_array_sorting_method(i_want_pets) #=>
["3", "4", "I", "but", "have", "only", "pets", "want"] 

The numbers were converted to strings because of the method I used when I made this. 
You don't have to do this in the exact same way, just make sure to write your own 
test if you are going to do it differently and give that to your group.

my_hash_sorting_method(my_family_pets_ages) #=>
[["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], 
["Evi", 8], ["George", 14]]

This may be false depending on how your method deals with ordering the animals 
with the same ages.
=end


def my_array_sorting_method(array)
	sorted_array = array
	sorted_array = sorted_array.sort

	puts "original array: " 
	print array
	puts
	puts "sorted array: "
	print sorted_array

end

my_array_sorting_method(names_array)

puts "--" *10




def my_hash_sorting_method(hash)

	sorted_hash = hash 
	sorted_hash = sorted_hash.sort_by {|key, value| value}

	puts "original hash: "
	print hash
	puts
	puts "sorted hash: "
	print sorted_hash

end

my_hash_sorting_method(pets_hash)

puts
puts "--" *10


=begin
Person 4: Delete Matching Data
Sometimes you no longer need data that matches something. Create a 
`my_array_deletion_method` that takes an array and a letter, and deletes 
all the strings that contain that letter. This should modify the original because 
we now permanently hate that letter.

For example:

my_deletion_method(i_want_pets, "a")
#=> ["I", 4, "pets", "but", "only", 3 ]

Poor George passed away. He had a good life, but I need to permanently remove him 
from my list.

my_deletion_method(my_family_pets_ages, "George")
#=> {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, 
"Ditto" => 5}

=end

def array_deletion_method(array, letter)
	deleted = []
	new_array = []

	array.each do |x|
		if x.include?(letter)
		deleted << x
		else
		new_array << x
		end
	end

	puts new_array

end


array_deletion_method(names_array, "z")

puts "--" *10




def hash_deletion_method(hash, name_key)

	hash.delete_if {|key, value| key == name_key}
	puts hash

end

hash_deletion_method(pets_hash, "amanda")





