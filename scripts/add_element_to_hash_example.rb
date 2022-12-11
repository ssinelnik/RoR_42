cars = {
    "Ferrari" => 5000,
    "BMW" => 3500,
    "NISSAN" => 2100
}

smartphones = {
    Huawei: 1000,
    Apple: 6000,
    Sony: 3700
}

cars["Audi".to_s] = 5000.to_i
smartphones["Xiaomi".to_sym] = 800.to_i

puts cars
puts smartphones