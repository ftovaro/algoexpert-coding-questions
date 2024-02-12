require "minitest/autorun"
require_relative "transpose_matrix"

class Test < Minitest::Test
  def test_1
    matrix = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    transposed = [
      [1,4,7],
      [2,5,8],
      [3,6,9]
    ]
    assert_equal(transposed, Problem::transpose_matrix(matrix))
  end

  # def test_2
  #   assert_equal(nil, Problem::transpose_matrix())
  # end
end
