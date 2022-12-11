#пример для обработки элементов массива
#даже, если он двумерный
my_2d_array = [[1, 2, 3], ["first", "second", "third"], [true, 8, "nineth"]]
my_2d_array.each { |item| puts "#{item}\n"}