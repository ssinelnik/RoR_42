#Задача "Правильный треугольник"
#--------------------------------------------------------------------------
=begin
Программа запрашивает у пользователя 3 стороны треугольника 
и определяет, является ли треугольник прямоугольным 
(используя теорему Пифагора www-formula.ru), 
равнобедренным (т.е. у него равны любые 2 стороны)  
или равносторонним (все 3 стороны равны) и выводит результат на экран. 
Подсказка: чтобы воспользоваться теоремой Пифагора, 
нужно сначала найти самую длинную сторону (гипотенуза) 
и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. 
Если все 3 стороны равны, то треугольник равнобедренный 
и равносторонний, но не прямоугольный.
=end
#--------------------------------------------------------------------------

#function return true if one side is good for Pythagorean rule
def Pythagorean_Rule(triangle_side_1, triangle_side_2, triangle_side_3)
    if ((triangle_side_1**2).round(1) == (triangle_side_2**2).round(1) + (triangle_side_3**2).round(1)) ||
       ((triangle_side_2**2).round(1) == (triangle_side_1**2).round(1) + (triangle_side_3**2).round(1)) ||
       ((triangle_side_3**2).round(1) == (triangle_side_2**2).round(1) + (triangle_side_1**2).round(1)) 
       return true
    end
end

#triangle first side
puts "Enter triangle first side A:"
triangle_a = gets.chomp.to_f

#triangle second side
puts "Enter second side B:"
triangle_b = gets.chomp.to_f

#triangle third side
puts "Enter triangle third side C:"
triangle_c = gets.chomp.to_f

#find the largest triangle side - hypotenuse
max_triangle_side = triangle_a
[triangle_b, triangle_c].each do |triangle_side| 
    if triangle_side > max_triangle_side
        max_triangle_side = triangle_side
    end
end

#check "Pythagorean Rule" for right triangle
case max_triangle_side
    when triangle_a then puts "The triangle is right!" if Pythagorean_Rule(max_triangle_side, triangle_b, triangle_c)
    when triangle_b then puts "The triangle is right!" if Pythagorean_Rule(triangle_a, max_triangle_side, triangle_c)
    when triangle_c then puts "The triangle is right!" if Pythagorean_Rule(triangle_a, triangle_b, max_triangle_side)
end

#for isosceles triangle
if (triangle_a == triangle_b) ^ (triangle_b == triangle_c) ^ (triangle_c == triangle_a)
    puts "The triangle is isosceles!"
end

#for equilateral triangle
if triangle_a == triangle_b && triangle_b == triangle_c
    puts "The triangle is equilateral!"
end