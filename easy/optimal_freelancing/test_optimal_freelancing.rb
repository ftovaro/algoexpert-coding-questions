require "minitest/autorun"
require_relative "optimal_freelancing"

class Test < Minitest::Test
  def test_1
    assert_equal(nil, Problem::optimal_freelancing())
  end

  def test_2
    assert_equal(nil, Problem::optimal_freelancing())
  end
end
