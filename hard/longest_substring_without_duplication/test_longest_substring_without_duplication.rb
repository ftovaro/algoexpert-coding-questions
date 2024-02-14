require "minitest/autorun"
require_relative "longest_substring_without_duplication"

class Test < Minitest::Test
  def test_1
    assert_equal("mentisac", Problem::longest_substring_without_duplication("clementisacap"))
  end

  def test_2
    assert_equal("ab", Problem::longest_substring_without_duplication("abba"))
  end
end
