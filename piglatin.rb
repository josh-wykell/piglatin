class Piglatin

  def initialize(phrase)
    @phrase = phrase
  end



  def translate
    @phrase.split.map { |word| translate_word(word) }.join(" ")
  end

  def translate_word(word)
    punct = word =~ /[.'!?;:]$/
    num = word =~ /^[0-9]/
    caps = word =~ /^[A-Z]/
    word.downcase!
    if punct
      end_mark = word.last
      word.chop
    end

    if num
      new_word = word
    elsif %w(a e i o u).include?(word[0])
      new_word = word + "yay"
    else
      vowel_index = /[aeiou]/ =~ word
      new_word = word[vowel_index..-1] + word[0..vowel_index-1] +"ay"
                            #[0...vowel index] does the same thing
    end
    if caps
      new_word[0] = new_word[0].upcase
    end

    # if num
    #   new_word.insert(-1, end_mark)
    # end
    
  #   new_word
  # end

  # def first_letter
  #   @word[0]
  # end

end

