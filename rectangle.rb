class Rectangle
  attr_reader :area
  attr_writer :length, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def area
    @length * @breadth
  end
end

rec = Rectangle.new(10, 20)
# Area of rectangle
puts rec.area

# Set length for the Rectangle
rec.length = 12
puts rec.area

# Set breadth for the Rectangle
rec.breadth = 16
puts rec.area
