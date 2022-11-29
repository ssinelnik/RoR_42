#Задача "Сумма покупок"
#----------------------------------------------------------------------------------------------------------------------
=begin
Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом). 
Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара. 
На основе введенных данных требуетеся:
 - Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, 
   содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
 - Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end
#----------------------------------------------------------------------------------------------------------------------

#function that add users's hoods yo hash
def add_goods_to_hash(name, price, quantity, goods)
    #control if
    if (name != :default) && (price != 0) && (quantity != 0)
        #nested empty hash with price and quantity
        nested_goods = Hash.new
        #add price and quantity to nested hash
        nested_goods[price.to_f] = quantity.to_f
        #add nested hash to goods hash
        goods[name.to_sym] = nested_goods
        return goods
    else
        return nil
    end
end

#function that realise summary of goods
def summary_price_of_goods(price, quantity, sum)
    sum = price.to_f * quantity.to_f
    return sum
end

#user's empty hash with goods name
user_goods = Hash.new

#user's stop-word
stop_word = "stop"

#start 'PRINT'
print "LET'S START!\n"

#external variable to control loop steps
loop_control = 1

#initializing variables with default values, because they must be global, NOT local in BIG LOOP
user_product_name = :default
user_product_price = 0
user_product_quantity = 0
user_sum = 0

#BIG LOOP with program logic
loop do
    puts "-------------------------------------------"
    puts "GOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOD №#{loop_control}"
    loop_control += 1 #increase loop step by 1

    #call add_goods_to_hash on second step
    add_goods_to_hash(user_product_name, user_product_price, user_product_quantity, user_goods) if loop_control >= 2
    #call summary_price_of_goods on second step
    user_sum = user_sum + summary_price_of_goods(user_product_price, user_product_quantity, user_sum) if loop_control >= 2

    #user's product name
    puts "Step №1. Enter your product name please: "
    user_product_name = gets.chomp
    #check empty user input
    puts "User, WTF? Try again." if user_product_name.length == 0
    user_product_name.downcase! #to lower case
    #go out from loop if user input "stop"
    break if user_product_name.include? stop_word

    #user's product price
    puts "Step №2. Enter your product price please: "
    user_product_price = gets.chomp
    #check empty user input
    puts "User, WTF? Try again." if user_product_price.length == 0
    #go out from loop if user input "stop"
    break if user_product_price.include? stop_word

    #user's product quantity
    puts "Step №3. Enter your product quantity please: "
    user_product_quantity = gets.chomp
    #check empty user input
    puts "User, WTF? Try again." if user_product_quantity.length == 0
    #go out from loop if user input "stop"
    break if user_product_quantity.include? stop_word
end

#final 'PRINT'
puts "-------------------------------------------\nTHE END"
puts "\nThese are your goods that you spent money [#{user_sum}] on...\n#{user_goods}"