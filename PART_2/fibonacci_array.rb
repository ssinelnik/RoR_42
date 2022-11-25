#Задача "Массив Фибоначчи"
#-----------------------------------------
=begin
Заполнить массив числами фибоначчи до 100.
=end
#-----------------------------------------
#EXAMPLE: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.

#start array [0, 1]
fibonacci_array = [0, 1]

#arrays filling by fibonacci algorithm
for control in 2..100 do
    fibonacci_sum = fibonacci_array[control-1] + fibonacci_array[control-2]
    if fibonacci_sum <= 100
        fibonacci_array.push(fibonacci_sum) 
    else
        break
    end
end

#final 'PRINT'
print "FFFFFFFFFFFFFFFFFFIBONACCI:", "\n"
fibonacci_array_index = 0 #fibonacci_array_index must be outside functional block DO for saving index
fibonacci_array.each do |fibonacci_array_value|
    puts "element №#{fibonacci_array_index}: #{fibonacci_array_value}"
    fibonacci_array_index += 1
end

#size of array
puts "The total number of array elements is #{fibonacci_array.size}."