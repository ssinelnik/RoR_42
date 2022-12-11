alphabet = ["a", "b", "c"]
print alphabet, " "
alphabet.push("d")
print alphabet, " \n"

caption = "A giraffe surrounded by "
puts caption
caption += "weezards!"
puts caption

puts "\n"
#Можно заменить .push на <<

alphabet = ["a", "b", "c"]
print alphabet, " "
alphabet.<<("d")
print alphabet, " \n"

caption = "A giraffe surrounded by "
puts caption
caption << "weezards!"
puts caption