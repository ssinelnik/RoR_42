#Задача "Алфавит"
#---------------------------------------------------------------------
=begin
Заполнить хеш гласными буквами, 
где значением будет являтся порядковый номер буквы в алфавите (a - 1).
=end
#---------------------------------------------------------------------

#return the number of letter from English alphabet if the letter is vowel
def alphabet_letter_number alphabet_letter
    case alphabet_letter
        when "a" then return 1
        when "e" then return 5
        when "i" then return 9
        when "j" then return 10
        when "o" then return 15
        when "u" then return 21
        when "y" then return 25
    end
end

#empty hash
alphabet_hash = Hash.new

#hashes filling with exclive loop
for letter in "a"..."z" do
    #use alphabet_letter_number method for vowel letters
    alphabet_hash[alphabet_letter_number(letter)-1] = letter if alphabet_letter_number(letter) != nil
    
end

#final 'PRINT'
puts alphabet_hash