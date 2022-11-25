#Задача "Лучший массив в мире и в мульти-вселенной когда-либо существовавший..."
#----------------------------------------------
=begin
Заполнить массив числами от 10 до 100 с шагом 5.
=end
#----------------------------------------------

#control variable for times loop
control = 95 / 5

#variable for start to go
go = 10

#empty array
the_best_array_in_the_world = Array.new

#arrays filling
control.times {
    the_best_array_in_the_world.push(go)
    go += 5
}

#boring final 'PRINT'
puts the_best_array_in_the_world

#separator
puts "-------------------------------------"

#more funny final 'PRINT'
print "MY BEST ARRAY IN THE WORLD AND MULTIUNIVERSE EVER:", "\n"
array_index = 0 #array_index must be outside functional block DO for saving index
the_best_array_in_the_world.each do |array_value|
    puts "element №#{array_index}: #{array_value}"
    array_index += 1
end

#size of array
puts "The total number of array elements is #{the_best_array_in_the_world.size}."