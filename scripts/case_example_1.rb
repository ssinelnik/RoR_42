puts "Enter your choice: "
choice = gets.chomp.downcase

case choice
  when 'add'
    puts "Added!"
  when 'update'
    puts "Updated!"
  when 'display'
    puts "Movies!"
  when 'delete'
    puts "Deleted"
end