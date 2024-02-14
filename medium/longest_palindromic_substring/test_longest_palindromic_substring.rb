require "minitest/autorun"
require_relative "longest_palindromic_substring"

class Test < Minitest::Test
  def test_1
    assert_equal("xyzzyx", Problem::longest_palindromic_substring("abaxyzzyxf"))
  end

  def test_2
    assert_equal("abcdefgfedcba", Problem::longest_palindromic_substring("abcdefgfedcba"))
  end
end
