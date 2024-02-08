module Problem
  class BT
    attr_accessor :value, :left, :right
    def initialize(value:, left:, right:)
      @value = value
      @left = left
      @right = right
    end
  end

  def self.branch_sums_helper(root, current_sum, res)
    if root.left.nil? && root.right.nil?
      res << current_sum + root.value
    end

    if root.left != nil
      branch_sums_helper(root.left, root.value + current_sum, res)
    end

    if root.right != nil
      branch_sums_helper(root.right, root.value + current_sum, res)
    end

    res
  end

  def self.branch_sums(root)
    branch_sums_helper(root, 0, [])
  end
end
