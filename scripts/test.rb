colors = { 
    "blue" => 3,
    "green" => 1,
    "red" => 2
  }

  #PRINT
  #------------
  puts colors
  puts " "
  #------------

  colors = colors.sort_by do |color, count|
    count
  end

  #PRINT
  #------------
  puts colors
  puts " "
  #------------

  colors.reverse!

  #PRINT
  #------------
  puts colors
  puts " "
  #------------

  colors.each do |name, count|
    puts name + " " + count.to_s
  end