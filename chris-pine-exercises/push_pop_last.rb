
=begin
push adds an object to the end of your array

pop removes the last object from the array (and tells you what it was)

last is similar to pop in that it tells you what’s at the end of the array, 
except that it leaves the array alone. 

Again, push and pop actually change the array:
=end

favorite_books = []

favorite_books.push "The Unbearable Lightness of Being"
favorite_books.push "1Q84"
favorite_books.push "The Kite Runner"
favorite_books.push "Demian"


puts favorite_books [1]

puts favorite_books.last

puts favorite_books.pop