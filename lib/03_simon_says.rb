def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  (1..num).map { str }.join(" ")
end

def start_of_word(str, num)
  str[0...num]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  little_words = ["and", "or", "the", "over"]
  str.split.map.with_index do |word, i|
    if little_words.include?(word) && i != 0
      word.downcase
    else
      word[0].upcase + word[1..-1].downcase
    end
  end.join(" ")
end
