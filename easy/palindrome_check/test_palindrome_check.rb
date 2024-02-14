require "minitest/autorun"
require_relative "palindrome_check"

class Test < Minitest::Test
  def test_1
    assert_equal(true, Problem::palindrome_check("abcdcba"))
  end

  def test_2
    assert_equal(true, Problem::palindrome_check("a"))
  end

  def test_3
    assert_equal(false, Problem::palindrome_check("abcd"))
  end
end
