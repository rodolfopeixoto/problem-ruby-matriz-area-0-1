require 'byebug'

class Matrix
  def initialize(matrix)
    @matrix = matrix
    @submatrix_temporary = []
    @maximum_square_size = 0
    @previous = 0
    @temporary = 0
  end

  def analyze_minimum(index_j)
    @submatrix_temporary[index_j] = 0 if @submatrix_temporary[index_j].nil?

    temporary_minimum = [@submatrix_temporary[index_j], @previous].min
    @submatrix_temporary[index_j] = [temporary_minimum, @submatrix_temporary[index_j]].min + 1
  end

  def analyze_maximum(index_j)
    [@maximum_square_size, @submatrix_temporary[index_j]].max
  end

  def analyze_submatrix(index_i, index_j)
    if @matrix[index_i][index_j] == 1
      analyze_minimum(index_j)
      @maximum_square_size = analyze_maximum(index_j)
    else
      @submatrix_temporary[index_j] = 0
    end
  end

  def search_submatrix(sub_matrix, index_i)
    sub_matrix.each_with_index do |value, index_j|
      @temporary = @submatrix_temporary[index_j].nil? ? 0 : @submatrix_temporary[index_j]
      analyze_submatrix(index_i, index_j)
      @previous = @temporary;
    end
  end

  def maximalSquare
    @matrix.each_with_index do |sub_matrix, index_i|
      search_submatrix(sub_matrix, index_i)
    end
    @maximum_square_size * @maximum_square_size
  end
end


matrix = Matrix.new(
  [
    [ 1, 0, 1, 1, 0, 1, 0 ],
    [ 0, 0, 1, 0, 1, 0, 0 ],
    [ 1, 1, 1, 0, 1, 0, 0 ],
    [ 0, 1, 1, 1, 1, 0, 1 ],
    [ 1, 1, 1, 1, 0, 0, 1 ],
    [ 0, 1, 1, 1, 0, 0, 0 ]
  ]
)
puts matrix.maximalSquare


matrix2 = Matrix.new(
  [
    [ 1, 0, 1, 1, 0, 1, 0 ],
    [ 0, 0, 1, 1, 1, 0, 0 ],
    [ 1, 1, 1, 1, 0, 0, 0 ],
    [ 0, 1, 1, 0, 1, 0, 1 ],
    [ 1, 1, 0, 0, 0, 0, 1 ],
    [ 0, 1, 1, 1, 0, 0, 0 ]
  ]
)
puts matrix2.maximalSquare
