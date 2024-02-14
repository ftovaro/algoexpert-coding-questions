require "minitest/autorun"
require_relative "longest_substring_without_duplication_size"

class Test < Minitest::Test
  def test_1
    assert_equal(8, Problem::longest_substring_without_duplication_size("clementisacap"))
  end

  def test_2
    assert_equal(2, Problem::longest_substring_without_duplication_size("abba"))
  end
end
