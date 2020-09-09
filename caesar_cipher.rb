#Caesar Cipher Method

def caesar_cipher(string, shift)
    letters = string.split("")
    shiftedString = []
    letters.each do |letter|
        if letter == " "
            newAscii = 32
        elsif letter == "z"
            ascii = 97
            newAscii = ascii + (shift-1)
        elsif letter == "Z"
            ascii = 65
            newAscii = ascii + (shift-1)
        else
        ascii = letter.ord
        newAscii = ascii + shift
        newLetter = newAscii.chr
        end
        newLetter = newAscii.chr
        shiftedString.push(newLetter)

    end
    
    puts shiftedString.join

end

caesar_cipher("My name is Sean", 1)