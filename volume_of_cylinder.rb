class Cylinder

  PI = 3.142

  def initialize(height)
    @radius = 10
    @height = height
  end

  def volume
    PI * @radius * @radius * @height
  end

end

cylinder = Cylinder.new(6)
puts cylinder.volume
