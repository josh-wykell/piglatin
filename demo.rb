def self.translate_word(word)
    length = word.index(/[aeiou]/) 
    prefix = word.slice(0, length)
    suffix = length == 0 ? 'yay' : prefix + 'ay'

    word[length..-1] + suffix
  end