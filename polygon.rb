# Implement a class Polygon with square, rectangle, triangle as subclass, 
# Override the area method. Implement the public, protected and private methods in these classes. 
# Implement class methods in each sub class to print the properties of that polygon.

class Polygon
	def area
  end
end

class Square < Polygon
  attr_writer :len

  def initialize(len)
    @len = len
  end

  def area
    @len ** 2
  end
end

class Rectangle < Polygon
  attr_writer :len, :width

  def initialize(len, width)
    @len, @width = len, width
  end

  def area
    @len * @width
  end
end

class Triangle < Polygon

  attr_writer :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def area
    s = half_perimeter

    Math.sqrt(s * (s - @a) * (s - @b) * (s - @c))
  end

  private

  def half_perimeter
    (@a + @b + @c) / 2
  end

end

square = Square.new(10)
puts square.area

rectangle = Rectangle.new(10, 20)
puts rectangle.area

triangle = Triangle.new(3, 4, 5)
puts triangle.area
