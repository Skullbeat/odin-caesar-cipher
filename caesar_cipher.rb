def caesar_cipher(string, shift_factor)
  result = ''
  chars = string.split("")
  chars.each do |char|
    # use caesar cipher only if char is an uppercase or lowercase letter
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      enc_char = char.ord + shift_factor

      #ensure wrapping from Z to A or z to a
      enc_char -= 26 if (enc_char > 91 && char.ord < 91) || enc_char > 122
      result += enc_char.chr
    else
      result += char
    end
  end
  result
end

puts (caesar_cipher('What a string', 5))