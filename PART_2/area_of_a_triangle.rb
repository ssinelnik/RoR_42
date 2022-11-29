#Задача "Площадь треугольника"
#-----------------------------------------------------------
=begin
Площадь треугольника можно вычислить, 
зная его основание (a) и высоту (h) по формуле: 1/2*a*h. 
Программа должна запрашивать основание и высоту треугольника 
и возвращать его площадь.
=end
#-----------------------------------------------------------

#triangle base
puts "Triangle base:"
user_triangle_base = gets.chomp

#triangle height
puts "Triangle heiht:"
user_triangle_height = gets.chomp

#triangle area
triangle_area = 1 / (2 * user_triangle_base.to_f * user_triangle_height.to_f)

#final 'PRINT'
puts "Area of a triangle is #{triangle_area}."