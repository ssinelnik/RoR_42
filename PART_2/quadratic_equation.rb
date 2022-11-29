#Задача "Квадратное уравнение"
#----------------------------------------------------------------------------------------
=begin
Пользователь вводит 3 коэффициента a, b и с. 
Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) 
и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
- Если D > 0, то выводим дискриминант и 2 корня
- Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
- Если D < 0, то выводим дискриминант и сообщение "Корней нет"
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). 
Для вычисления квадратного корня, нужно использовать Math.sqrt.
Например, Math.sqrt(16) вернет 4, т.е. квадратный корень из 16.
=end
#----------------------------------------------------------------------------------------

#user's A coefficient
puts "Enter A:"
coefficient_a = gets.chomp().to_f;

#user's B coefficient
puts "Enter B:"
coefficient_b = gets.chomp.to_f();

#user's C coefficient
puts "Enter C:"
coefficient_c = gets.chomp.to_f();

#discriminant formula: D = b**2-4*a*c 
discriminant = coefficient_b**2 - 4 * coefficient_a * coefficient_c

#find x
x_1 = (-coefficient_b+sqrt(discriminant))/2*coefficient_a if discriminant > 0
x_2 = (-coefficient_b-sqrt(discriminant))/2*coefficient_a if discriminant > 0
x_1 = -coefficient_b/2*coefficient_a if discriminant < 0
x_2 = -coefficient_b/2*coefficient_a if discriminant < 0

#final 'PRINT'
if discriminant == 0 
    puts "NO ROOTS" 
else
    puts "RESULT: X1 = #{x_1}; X2 = #{x_2}."
end