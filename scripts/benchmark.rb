#код сравнивает скорость обработки хеша с индексами типа symbols, и типа string

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

#проводит итерацию поиска буквы "r" в алфавите 100 тыс. раз
string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

#проводит итерацию поиска буквы "r" в алфавите 100 тыс. раз
symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

if string_time > symbol_time
    puts "string type takes more time"
elsif string_time < symbol_time
    puts "symbol type tales more time"
end

time_1 = "String time: #{string_time} seconds."
time_2 = "Symbol time: #{symbol_time} seconds."

puts time_1
puts time_2