require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'

require './piglatin'

#first bundle init- creates empty gem file
#in file list needed gems
#then bundle install
#in the future name testing suite 'test_#####' 
#and class 'class Test######'

class PiglatinTest < Minitest::Test

  def setup
  end

  def test_humans_are_umanhay
    human = Piglatin.new("human")
    expected = "umanhay"
    assert_equal expected, human.translate
  end

  def test_vowels_end_with_yay
    occupying = Piglatin.new("occupying")
    expected = "occupyingyay"
    assert_equal expected, occupying.translate
  end

  def test_special_rule_for_words_begining_with_t
    transformation = Piglatin.new("transformation")
    assert_equal "ansformationtray", transformation.translate
  end

  def test_if_multiple_words_are_piglatin
    combat_complains = Piglatin.new("combat complains")
    assert_equal "ombatcay omplainscay", combat_complains.translate
  end

  def test_if_capitalization_matters
    the_resemblance_mutters = Piglatin.new("The Resemblance Mutters")
    assert_equal "Ethay Esemblanceray Uttersmay", the_resemblance_mutters.translate
  end

  def test_if_numbers_matter
    dangerous_facts_electricians_keep_to_themselves = Piglatin.new("15 Dangerous Facts Electricians Keep To Themselves")
    assert_equal "15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay", dangerous_facts_electricians_keep_to_themselves.translate
  end

  def test_if_punctuation_matters
    the_unpopular_glory_renames_an_ice = Piglatin.new("The unpopular glory renames an ice!")
    assert_equal "Ethay unpopularyay oryglay enamesray anyay iceyay!", the_unpopular_glory_renames_an_ice.translate 
  end
  
  def self.test_order
    :alpha
  end

end