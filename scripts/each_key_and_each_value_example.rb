my_hash = { one: 1, two: 2, three: 3 }
 
my_hash.each_key { |k| print k, " " }
# ==> one two three
 
my_hash.each_value { |v| print v, " " }
# ==> 1 2 3