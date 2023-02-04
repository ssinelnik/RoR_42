line_num = 0
File.open('file_for_reading.txt').each do |line|
    puts "#{line_num += 1}: #{line}"
end 