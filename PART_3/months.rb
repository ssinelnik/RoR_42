#Задача "Месяцы"
#-------------------------------------------------------------
=begin
Сделать хеш, содержащий месяцы и количество дней в месяце. 
В цикле выводить те месяцы, у которых количество дней ровно 30
=end
#-------------------------------------------------------------

#hash "months"
months = {
    january: 31,
    february: 29,
    march: 31,
    april: 30,
    may: 31,
    june: 30,
    july: 31,
    august: 31,
    september: 30,
    october: 31,
    november: 30,
    december: 31
}

#loop for final 'PRINT'
months.each do |month_key, month_value| 
    #puts month if days = 30
    puts "#{month_key}: #{month_value}" if month_value == 30
end