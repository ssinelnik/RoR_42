fruits = ["banana", "apple", "mango", "kiwi"]
cart = []
counter = 0 # for tracking number of redos
for fruit in fruits
	puts "Added #{fruit}  to cart: #{cart.append(fruit)}"
	if fruit == 'apple' # arbitrary condition check
		redo if (counter += 1) < 4 # ⤴ redo three more times
	end
end