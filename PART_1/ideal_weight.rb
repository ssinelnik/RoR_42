#Задача "Идеальный вес"
#-------------------------------------------------------------------------
=begin
Программа запрашивает у пользователя имя и рост
и выводит идеальный вес по формуле (<рост> - 110) * 1.15, 
после чего выводит результат пользователю на экран с обращением по имени. 
Если идеальный вес получается отрицательным, 
то выводится строка "Ваш вес уже оптимальный".
=end
#-------------------------------------------------------------------------

#user name
puts "Your name:"
user_name = gets.chomp

#user height
puts "Your height:"
user_height = gets.chomp

#user "ideal" weight
ideal_weight = (user_height.to_f - 110.0) * 1.15

#final 'PRINT'
if ideal_weight > 0
    puts "Your ideal weight is #{ideal_weight.to_i}, #{user_name}."
else
    puts "Your weight is already optimal."
end