=begin 
Implement Array #pad and Array #pad! . Each method accepts a minimum size 
(non-negative integer) and an optional pad value as arguments.

If the array's length is less than the minimum size, Array#pad should return 
a new array padded with the pad value up to the minimum size.

For example, ruby [1,2,3].pad(5)
should return:
[1,2,3,nil,nil]

And ruby [1,2,3].pad(5, 'apple')
should return:
[1,2,3,'apple', 'apple']

If the minimum size is less than or equal to the length of the array, it 
should just return the array.

That is, [1,2,3].pad(3) should return [1,2,3].

my_array.pad(0) should always return an array equal to my_array. 
Array#pad should always return a new object, i.e., it should be 
non-destructive.

Array#pad! behaves identically to Array#pad except that it modifies the 
underlying array.

=end


class Array

  def pad!(min_size, value = nil)
  	if min_size <= self.length
  		print self
  	else 	
    	(min_size - self.length).times { (self << "nil") } #modifies underlining array
    	print self
  	end
  end 

  def pad(min_size, value = nil)
  	if min_size <= self.length
  		print self
  	else 		
    	new_array = [] #non-destructive and returns a new object.
    	self.each do |x|
    		new_array << x
    	end

    	(min_size - self.length).times {new_array << "nil"}
    	print self
    	print new_array
  	end
  end

end


my_array = [1, 2, 3, 4]
my_array.pad(5)
my_array.pad!(7)



