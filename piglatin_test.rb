require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'

require './piglatin'

class PiglatinTest < Minitest::Test

  def setup
  end

  def test_humans_are_umanhay
    human = Piglatin.new("human")
    expected = "umanhay"
    assert_equal expected, human.translate
  end

  def test_vowels_end_with_ay
    occupying = Piglatin.new("occupying")
    expected = "occupyingay"
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

  def self.test_order
    :alpha
  end

end