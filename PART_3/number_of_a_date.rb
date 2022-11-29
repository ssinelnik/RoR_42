#Задача "Номер даты"
#------------------------------------------------------------------------------------------------
=begin
Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
(Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
Алгоритм опредления високосного года: docs.microsoft.com
=end
#------------------------------------------------------------------------------------------------

#leap year def
def serial_number_of_the_date (day, month, year)

    #boolean variable for one new 29th day in february
    february_29th = false
  
    #leap year if
    if year % 4 == 0 #step №1: check mod 4
      if year % 100 == 0 #step №2: check mod 100
        if year % 400 == 0 #step №3: check mod 400
          puts "The year is a leap."
          february_29th = true
        else
          puts "The year is NOT a leap."
        end
      else
        puts "The year is a leap."
        february_29th = true
      end
    else
      puts "The year is NOT a leap."
    end
  
    #hash "months"
    months = {
      january: 31,
      february: 28,
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
  
    #days in february is 29, if the year is an leap
    months[:february] = 29.to_i if february_29th == true
  
    #convert month's number to month's name in symbol type
    case month
      when 1 then month_control = :january
      when 2 then month_control = :february
      when 3 then month_control = :march
      when 4 then month_control = :april
      when 5 then month_control = :may
      when 6 then month_control = :june
      when 7 then month_control = :july
      when 8 then month_control = :august
      when 9 then month_control = :september
      when 10 then month_control = :october
      when 11 then month_control = :november
      when 12 then month_control = :december
    end
  
    #sum of days, start value is 0
    sum_of_days = 0
  
    #functional block for counting days in year
    months.each do |key, value|
      sum_of_days = sum_of_days + value #step №1: count summary
      if key == month_control
        sum_of_days = sum_of_days - (value-day) #step №2: final subtraction from summary
        break
      end
    end
  
    #return our sum, or the number of the date in the year
    return sum_of_days
  end
  
  #user's day
  puts "Enter a day:"
  user_day = gets.chomp.to_i
  
  #user's month
  puts "Enter a month:"
  user_month = gets.chomp.to_i
  
  #user's year
  puts "Enter a year:"
  user_year = gets.chomp.to_i
  
  #final 'PRINT'
  puts "The serial number of the date is #{serial_number_of_the_date(user_day, user_month, user_year)}."