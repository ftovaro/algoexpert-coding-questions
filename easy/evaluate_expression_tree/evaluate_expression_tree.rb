# O(n) # nodes time, O(h) space

module Problem
  class BT
    attr_accessor :value, :left, :right
    def initialize(value:, left:, right:)
      @value = value
      @left = left
      @right = right
    end
  end

  def self.evaluate_expression_tree_helper(node, op1 = 0, op2 = 0, op = 0)
    if node.left == nil && node.right == nil
      return node.value
    end

    if node.left != nil
      op1 = evaluate_expression_tree_helper(node.left, op1, op2, op)
    end

    op = node.value

    if node.right != nil
      op2 = evaluate_expression_tree_helper(node.right, op1, op2, op)
    end

    case op
    when -1
      return op1 + op2
    when -2
      return op1 - op2
    when -3
      return (op1.to_f / op2).truncate
    else
      return op1 * op2
    end
  end

  def self.evaluate_expression_tree(tree)
    evaluate_expression_tree_helper(tree)
  end
end
