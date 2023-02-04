begin
  control ||= 1

  puts 'Now the current process is running.'
  raise 'An excaption occurred!'

  rescue => error
    puts error.message

  if (control += 1) < 5 # go back to begin block if condition ok
    puts "<retrying..>"
    retry # ⤴
  end

  puts "-------------------------"
	puts "Retry attempts exceeded. Moving on."
end