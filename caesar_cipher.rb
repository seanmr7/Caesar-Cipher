#Caesar Cipher Method

def caesar_cipher(string, shift)
    letters = string.split("")
    shiftedString = []
    letters.each do |letter|
        if letter == " "
            newAscii = 32
        else
        ascii = letter.ord
        newAscii = ascii + shift
        end
        if newAscii >= 123
            newAscii = 97 + (newAscii - 123)
        end
        if newAscii >=91 && newAscii < 96
            newAscii = 65 + (newAscii - 91)
        end
        newLetter = newAscii.chr
        shiftedString.push(newLetter)

    end
    
    puts shiftedString.join

end

caesar_cipher("MY name is Sean", 5)