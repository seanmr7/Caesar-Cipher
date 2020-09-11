#Caesar Cipher Method

def caesar_cipher(string, shift)
    letters = string.split("")
    shiftedString = []
    letters.each do |letter|
        ascii = letter.ord
        newAscii = ascii + shift
        if newAscii >= 123
            newAscii = 97 + (newAscii - 123)
        end
        if newAscii >=91 && newAscii < 96
            newAscii = 65 + (newAscii - 91)
        end
        if ascii <= 64 || (ascii > 90 && ascii < 97) || ascii >= 123
            newAscii = ascii
        end
        newLetter = newAscii.chr
        shiftedString.push(newLetter)

    end
    
    puts shiftedString.join

end

caesar_cipher("What a string!", 5)