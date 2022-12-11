puts "Enter your line:"
text = gets.chomp
words = text.split(" ")

puts "Enter your REDACT-line:"
redact = gets.chomp

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end