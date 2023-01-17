require "continuation"

ctr = 0
my_cont = nil

puts "The call/cc function returned: #{callcc { |c| my_cont = c;}}" # ⬅
# ⬇
ctr += 1
# ⬇
my_cont.call("hello world (#{ctr})") if ctr < 3 # ⤴
my_cont.call("jello world (#{ctr})") if ctr < 6 # ⤴

if ctr < 9
	my_cont.call("mellow world (#{ctr})") + 0 # ⤴
	puts "I am not executed!"
end