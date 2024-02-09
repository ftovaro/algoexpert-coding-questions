require "minitest/autorun"
require_relative "minimum_waiting_time"

class Test < Minitest::Test
  def test_1
    assert_equal(17, Problem::minimum_waiting_time([3, 2, 1, 2, 6]))
  end
end
