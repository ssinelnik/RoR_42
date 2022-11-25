#not working, need to rebuild
#irb work normal with this programs

def water_status(minutes)
    if minutes < 7
        puts "The water is not boiling yet."
    elsif minutes == 7
        puts "It's just barely boiling..."
    elsif minutes == 8
        puts "It's boiling!"
    else
        puts "Hot!"
    end
end

print "Enter minutes: "
user_minutes = gets.chomp
puts "You enter recently: #{user_minutes}."

water_status(user_minutes) 