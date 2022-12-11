#пример обработки хэща через итератор .each do

restaurant_menu = {
    "noodles" => 4,
    "soup" => 3,
    "salad" => 2
  }
   
  restaurant_menu.each do |item, price|
    puts "#{item}: #{price}" #ИЛИ puts name + " " + count.to_s
  end