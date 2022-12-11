#пример обработки двумерного массива
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array|
  sub_array.each { |element| puts element}
}

