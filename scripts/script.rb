print "Enter your name: "
user_input = gets.chomp
#user_input.downcase!

if user_input.length == 0
  puts "User, WTF? Try again."
end

if user_input.include? "s"
  puts "string conteins s-symbol"
  user_input.gsub!(/s/, "th")
else
  puts "string is not contein s-symbol"
end

if user_input.include? "S"
  puts "string conteins S-symbol"
  user_input.gsub!(/S/, "th")
else
  puts "string is not contein S-symbol"
end

puts "Hello, #{user_input}"