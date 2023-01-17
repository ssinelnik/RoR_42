require "continuation" # explicit import

ctr = 0
my_cont = callcc { |c| c } # define continuation checkpoint ⬅
puts “Counter: #{ctr += 1}” # ⬇
my_cont.call(my_cont) if ctr < 5 # call (go back to) checkpoint ⤴