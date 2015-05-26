require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'

require 'piglatin'

class PiglatinTest < Minitest::PiglatinTest

  def setup
    Piglatin.new

  def test_01_human_is_umanhay
    expected = "umanhay"
    assert_equal expected, Piglatin.translate "hello"
  end



  def self.test_order
    :alpha
  end

end