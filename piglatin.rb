class Piglatin

  def initialize(word)
    @word = word
  end

  def translate
    phrase = @word.split.map do |word|
      if %w(a e i o u).include?(word[0])
        word + "ay"
      else
        vowel_index = /[aeiou]/ =~ word
        word[vowel_index..-1] + word[0..vowel_index-1] +"ay"
                            #[0...vowel index] does the same thing
      end
    end
    @word = phrase.join(" ")
  end

  # def first_letter
  #   @word[0]
  # end

end

