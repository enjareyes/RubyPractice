
#print the lyrics to "99 bottles of beer on the wall"

puts "How many bottles of beer are on the wall?"
bottles_on_wall	 = 99
bottles = bottles.to_i

def howmanybottles(bottles)
	while bottles >= 0
		puts "OH #{bottles} bottles of beer on the wall. #{bottles} bottles of beer! Take one down, pass it around!"
		bottles = bottles - 1
	end
end

howmanybottles(bottles_on_wall)