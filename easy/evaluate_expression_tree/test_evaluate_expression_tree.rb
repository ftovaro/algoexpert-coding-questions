require "minitest/autorun"
require_relative "evaluate_expression_tree"

class Test < Minitest::Test
  def test_1
    node_1 = Problem::BT.new(value: 2, left: nil, right: nil)
    node_2 = Problem::BT.new(value: 3, left: nil, right: nil)
    node_3 = Problem::BT.new(value: -4, left: node_1, right: node_2)
    node_4 = Problem::BT.new(value: 2, left: nil, right: nil)
    node_5 = Problem::BT.new(value: -2, left: node_3, right: node_4)
    node_6 = Problem::BT.new(value: 8, left: nil, right: nil)
    node_7 = Problem::BT.new(value: 3, left: nil, right: nil)
    node_8 = Problem::BT.new(value: -3, left: node_6, right: node_7)
    tree = Problem::BT.new(value: -1, left: node_5, right: node_8)
    assert_equal(6, Problem::evaluate_expression_tree(tree))
  end

  # def test_2
  #   assert_equal(nil, Problem::evaluate_expression_tree())
  # end
end
