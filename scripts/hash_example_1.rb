#1-й способ созданя хаша
example_hash_1 = Hash.new
example_hash_1["first_element"] = 1

#2-й способ создания хаша
example_hash_2 = { 
    "name" => "Eric",
    "age" => 26,
    "hungry?" => true
  }

  #3-й способ задания пустого хаша
  example_hash_3 = Hash.new