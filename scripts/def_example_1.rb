#METHODS
#-------------------------
#1
def welcome
    puts "Welcome to Ruby!"
end

#2
def cubertino (n)
    puts n ** 3
end

#3
def double(n)
    return n * 2
end

#4
def greeter(name)
    return "Welcome, #{name}!"
end

#5
def by_three?(number)
    if number % 3 == 0
        return true
    else
        return false
    end
end
  
#CALLS
#-------------------------
puts double(6)
puts greeter("Sasha")
puts by_three?(4)