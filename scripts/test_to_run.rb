puts "What's your favorite language?"
language = gets.chomp

#before refactoring:
=begin 
if language == "Ruby"
  puts "Ruby is great for web apps!"
elsif language == "Python"
  puts "Python is great for science."
elsif language == "JavaScript"
  puts "JavaScript makes websites awesome."
elsif language == "HTML"
  puts "HTML is what websites are made of!"
elsif language == "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end
=end

#after refactoring:
case language
    when "Ruby" then puts "Ruby is great for web apps!"
    when "Python" then puts "Python is great for science."
    when "JavaScript" then puts "JavaScript makes websites awesome."
    when "HTML" then puts "HTML is what websites are made of!"
    when "CSS" then puts "CSS makes websites pretty."
    else puts "I don't know that language!"
end