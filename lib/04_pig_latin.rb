def translate(str)
  str.split.map { |word| translate_one(word) }.join(" ")
end

def translate_one(str)
  vowels = "aeiou"
  return str + "ay" if vowels.include?(str[0])
  first_non_u_vowel_idx = 0

  str.each_char.with_index do |char, i|
    if vowels.include?(char) && char != "u"
      first_non_u_vowel_idx = i
      break
    end
  end

  str[first_non_u_vowel_idx..-1] + str[0...first_non_u_vowel_idx] + "ay"
end
