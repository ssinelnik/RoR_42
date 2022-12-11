class Polygon
  attr_accessor :sides
  @@sides = 10
  @sides = 10
end

class Triangle < Polygon
  @@sides = 3
end

class Rectangle < Polygon
  @@sides = 4
end

puts Polygon.sides
puts Triangle.sides
puts Rectangle.sides
puts Polygon.class_variables
puts Polygon.instance_variables
puts Polygon.new.sides