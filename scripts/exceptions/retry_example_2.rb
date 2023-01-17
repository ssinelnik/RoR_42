begin
	attempts ||= 1 # keeping track of retries
	
	puts "doing arbitrary task (attempt ##{ attempts })"
	raise "an exception occurred" # manually raising error

rescue => error
	puts error.message
	
	if (attempts += 1) < 5 # go back to begin block if condition ok
		puts "<retrying..>"
		retry # ⤴
	end
	
	puts "-------------------------"
	puts "Retry attempts exceeded. Moving on."
end