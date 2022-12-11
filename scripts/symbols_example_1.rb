#код конвертирует массив строк в массив объектов типа symbols

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
    symbols.push(s.to_sym)
end 
print symbols