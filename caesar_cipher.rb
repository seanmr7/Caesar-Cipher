# Caesar Cipher Method
# frozen_string_literal: true

def caesar_cipher(string, shift)
  letters = string.split('')
  shifted_string = []
  letters.each do |letter|
    ascii = letter.ord
    new_ascii = ascii + shift
    if new_ascii >= 123
      new_ascii = 97 + (new_ascii - 123)
    end
    if new_ascii >= 91 && new_ascii < 96
      new_ascii = 65 + (new_ascii - 91)
    end
    if ascii <= 64 || (ascii > 90 && ascii < 97) || ascii >= 123
      new_ascii = ascii
    end
    new_letter = new_ascii.chr
    shifted_string.push(new_letter)
  end
  puts shifted_string.join
end
caesar_cipher('What a string!', 5)
