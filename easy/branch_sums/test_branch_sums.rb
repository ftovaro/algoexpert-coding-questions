require "minitest/autorun"
require_relative "branch_sums"

class Test < Minitest::Test
  def test_1
    node_1 = Problem::BT.new(value: 8, left: nil, right: nil)
    node_2 = Problem::BT.new(value: 9, left: nil, right: nil)
    node_3 = Problem::BT.new(value: 4, left: node_1, right: node_2)
    node_4 = Problem::BT.new(value: 10, left: nil, right: nil)
    node_5 = Problem::BT.new(value: 5, left: node_4, right: nil)
    node_6 = Problem::BT.new(value: 2, left: node_3, right: node_5)
    node_7 = Problem::BT.new(value: 6, left: nil, right: nil)
    node_8 = Problem::BT.new(value: 7, left: nil, right: nil)
    node_9 = Problem::BT.new(value: 3, left: node_7, right: node_8)
    tree = Problem::BT.new(value: 1, left: node_6, right: node_9)
    assert_equal([15, 16, 18, 10, 11], Problem::branch_sums(tree))
  end

  # def test_2
  #   assert_equal(nil, Problem::branch_sums())
  # end
end
