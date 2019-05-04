class Matrix

  def initialize(matrix)
    @matrix = matrix
    @result = check_initial_matrix
  end

  def area
    # arrays.each_with_index do |array, i|
    #   array.each_with_index do |value, j|
    #     if i == j
    #       print "#{value[i][j]} "
    #       print "============="
    #       puts "Valor I = #{i} e Valor J= #{j} "
    #       print "-----------------------"
    #     end
    #   end
    # end
  end

  def square_sub_matrix
  end

  def check_initial_matrix
    @matrix[0][0] == 1 ? 1 : 0
  end

  def column
    @matrix.transpose
  end
end

