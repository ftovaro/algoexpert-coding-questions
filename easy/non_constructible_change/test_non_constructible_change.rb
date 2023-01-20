require "minitest/autorun"
require_relative "non_constructible_change"

class Test < Minitest::Test
  def test_1
    assert_equal(20, Problem::non_constructible_change([5, 7, 1, 1, 2, 3, 22]))
  end

  def test_2
    assert_equal(6, Problem::non_constructible_change([1, 1, 1, 1, 1]))
  end
end
