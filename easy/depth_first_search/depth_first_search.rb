# Time: O(V + E)
# Space: O(V)

module Problem
  class Node
    attr_accessor :name, :children
    def initialize(name)
      @name = name
      @children = []
    end

    def add(name)
      @children << Node.new(name)
      self
    end

    def dfs(array)
      array << name
      children.each { |node| node.dfs(array) }
      array
    end
  end

  def self.depth_first_search(graph)
    graph.dfs([])
  end
end
