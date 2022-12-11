# *friends - спорный аргумент (splat argument),
# т.к. он может вызываться неопределённое количество раз
# (столько, сколько захочет пользователь)
def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
  
#вызов метода со спорным аргументом
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor", "Daniel")