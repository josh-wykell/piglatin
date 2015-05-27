class Piglatin

  def initialize(word)
    @word = word
  end

  def translate
    if %w(a e i o u).include?(first_letter)
      @word + "ay"
    else
      vowel_index = /[aeiou]/ =~ @word
      @word[vowel_index..-1] + @word[0..vowel_index-1] +"ay"
                          #[0...vowel index] does the same thing
    end
  end

  def first_letter
    @word[0]
  end

end

