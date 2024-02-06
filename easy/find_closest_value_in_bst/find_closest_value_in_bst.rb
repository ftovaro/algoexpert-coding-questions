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
    current_node = tree
    closest = { value: Float::INFINITY, difference: Float::INFINITY }

    return current_node if current_node.value == target

    difference = (current_node.value - target).abs
    if difference < closest[:difference]
      closest[:value] = current_node.value
      closest[:difference] = difference
    end

    if(target < current_node.value)
      # current_node.left == nil
      return closest[:value] unless current_node.left

      current_node = current_node.left
    else
      # current_node.right == nil
      return closest[:value] unless current_node.right

      current_node = current_node.right
    end

    result_closest = find_closest_value_in_bst(current_node, target)

    (result_closest - target).abs < closest[:difference] ? result_closest : closest[:value]
  end
end
