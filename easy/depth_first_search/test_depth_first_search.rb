require "minitest/autorun"
require_relative "depth_first_search"

class Test < Minitest::Test
  def test_1
    graph = Problem::Node.new('A')
    graph.add('B').add('C').add('D')
    graph.children[0].add('E').add('F')
    graph.children[2].add('G').add('H')
    graph.children[0].children[1].add('I').add('J')
    graph.children[2].children[0].add('K')

    assert_equal(['A', 'B', 'E', 'F', 'I', 'J', 'C', 'D', 'G', 'K', 'H'],
                 Problem::depth_first_search(graph))
  end

  # def test_2
  #   assert_equal(nil, Problem::example())
  # end
end
