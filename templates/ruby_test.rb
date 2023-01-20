require "minitest/autorun"
require_relative ""

class Test < Minitest::Test
  def test_1
    assert_equal(nil, Problem::example())
  end

  def test_2
    assert_equal(nil, Problem::example())
  end
end
