module Problem
  class BST
    attr_accessor :value, :left, :right
    def initialize(value:, left:, right:)
      @value = value
      @left = left
      @right = right
    end
  end

  def self.find_closest_value_in_bst(tree, target)
    closest = { value: Float::INFINITY, difference: Float::INFINITY }
    current_node = nil

    return tree.value if tree.value == target

    difference = (tree.value - target).abs
    if difference < closest[:difference]
      closest[:value] = tree.value
      closest[:difference] = difference
    end

    if target < tree.value
      return closest[:value] if tree.left.nil?

      current_node = tree.left
    else
      return closest[:value] if tree.right.nil?

      current_node = tree.right
    end

    new_closest = find_closest_value_in_bst(current_node, target)

    (new_closest - target).abs < closest[:difference] ? new_closest : closest[:value]
  end
end
