# O(w * h) time | O(w * h) space

module Problem
  def self.transpose_matrix(matrix)
    transposed = []

    # matrix[0].each_with_index do |ely, y|
    #   new_row = []
    #   matrix.each_with_index do |elx, x|
    #     new_row << matrix[x][y]
    #   end
    #   transposed << new_row
    # end

    matrix[0].length.times do |y|
      new_row = []
      matrix.length.times do |x|
        new_row << matrix[x][y]
      end
      transposed << new_row
    end

    transposed
  end
end
