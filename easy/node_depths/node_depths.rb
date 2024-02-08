# Time: O(N) (we need to traverse all nodes in the tree)
# Space: O(h) The number of function calls in the stack are equal
# on how deep you can go in the tree

module Problem
  class BT
    attr_accessor :value, :left, :right
    def initialize(value:, left:, right:)
      @value = value
      @left = left
      @right = right
    end
  end

  def self.node_depths(root, depth = 0)
    return 0 if root.nil?

    depth + node_depths(root.left, depth + 1) + node_depths(root.right, depth + 1)
  end

  def self.node_depths_iterative(root)
    sum = 0
    stack = [{node: root, depth: 0}]
    while stack.length > 0
      node_info = stack.pop
      node = node_info[:node]
      depth = node_info[:depth]
      if node.nil?
        next
      end
      sum += depth
      stack << { node: node.left, depth: depth + 1 }
      stack << { node: node.right, depth: depth + 1 }
    end
    sum
  end
end
