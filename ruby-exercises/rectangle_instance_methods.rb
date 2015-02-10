=begin
Write four instance methods for rectangle:

Rectangle#area, which returns the area of the rectangle
Rectangle#perimeter, which returns the perimeter of the rectangle
Rectangle#diagonal, which returns the length of the rectangle's diagonal 
as a Float
Rectangle#square?, which returns true if the rectangle is a square and 
false otherwise

The rectangle class has been written for you below.
=end

class Rectangle

  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	area = width * height
  	puts area
  end

  def perimeter
  	perimeter = (width*2) + (height*2)
  	puts perimeter
  end

  def diagonal
  	diagonal = ((width**2)+(height**2))
  	diagonal = Math.sqrt(diagonal)
  	puts diagonal.to_i
  end

  def square
  	if width == height
  		puts "This rectangle is a square"
  	else
  		puts "This rectangle is not a square"
  	end
  end

end

a_square = Rectangle.new(4, 4)

a_square.area
a_square.perimeter
a_square.diagonal
a_square.square

puts "--" * 10

a_rectangle = Rectangle.new(4,16)
a_rectangle.area
a_rectangle.perimeter
a_rectangle.diagonal
a_rectangle.square



