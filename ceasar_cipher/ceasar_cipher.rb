def ceasar_cipher(string, shift)
  letters = ("a".."z").to_a
  new_chars = string.chars.map do |char|
    converted = false
    if char.upcase == char
      char = char.downcase
      converted = true
    end
    if letters.include?(char)
      char = letters[(letters.index(char) + shift) % letters.size]
      if converted
        char = char.upcase
      end
    end
    char
  end
  return new_chars.join
end

puts ceasar_cipher("What a string!", 5)
puts ceasar_cipher("AbCdEfG", -1)

