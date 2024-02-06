require "minitest/autorun"
require_relative "find_closest_value_in_bst"

class Test < Minitest::Test
  def test_1
    node_1 = Problem::BST.new(value: 1, left: nil, right: nil)
    node_2 = Problem::BST.new(value: 2, left: node_1, right: nil)
    node_3 = Problem::BST.new(value: 5, left: nil, right: nil)
    node_4 = Problem::BST.new(value: 5, left: node_2, right: node_3)
    node_5 = Problem::BST.new(value: 14, left: nil, right: nil)
    node_6 = Problem::BST.new(value: 13, left: nil, right: node_5)
    node_7 = Problem::BST.new(value: 22, left: nil, right: nil)
    node_8 = Problem::BST.new(value: 15, left: node_6, right: node_7)
    tree = Problem::BST.new(value: 10, left: node_4, right: node_8)
    assert_equal(13, Problem::find_closest_value_in_bst(tree, 12))
  end

  # def test_2
  #   assert_equal(nil, Problem::find_closest_value_in_bst(1,2))
  # end
end
