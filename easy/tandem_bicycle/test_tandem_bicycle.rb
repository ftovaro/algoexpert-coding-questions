require "minitest/autorun"
require_relative "tandem_bicycle"

class Test < Minitest::Test
  def test_1
    red = [5,5,3,9,2]
    blue = [3,6,7,2,1]
    assert_equal(32, Problem::tandem_bicycle(red, blue, true))
  end

  def test_2
    red = [5,5,3,9,2]
    blue = [3,6,7,2,1]
    assert_equal(25, Problem::tandem_bicycle(red, blue, false))
  end
end
