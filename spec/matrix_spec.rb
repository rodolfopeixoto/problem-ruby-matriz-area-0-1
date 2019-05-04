require 'matrix'
require 'spec_helper'

describe Matrix do
  before do
    @matrix = Matrix.new(
      [
        [ 1, 0, 1, 1, 0, 1, 0 ],
        [ 0, 0, 1, 0, 1, 0, 0 ],
        [ 1, 1, 1, 0, 1, 0, 0 ],
        [ 0, 1, 1, 1, 1, 0, 1 ],
        [ 1, 1, 1, 1, 0, 0, 1 ],
        [ 0, 1, 1, 1, 0, 0, 0 ]
      ]
    )
    @matrix_invalid = Matrix.new(
      [
        [ 0, 0, 1, 1, 0, 1, 0 ],
        [ 0, 0, 1, 0, 1, 0, 0 ],
        [ 1, 1, 1, 0, 1, 0, 0 ],
        [ 0, 1, 1, 1, 1, 0, 1 ],
        [ 1, 1, 1, 1, 0, 0, 1 ],
        [ 0, 1, 1, 1, 0, 0, 0 ]
      ]
    )
  end
  it ".column" do
    expect(@matrix.column).to eq(
      [
        [1,0,1,0,1,0],
        [0,0,1,1,1,1],
        [1,1,1,1,1,1],
        [1,0,0,1,1,1],
        [0,1,1,1,0,0],
        [1,0,0,0,0,0],
        [0,0,0,1,1,0]
      ]
    )
  end
  describe 'Check line 1 and column 1' do
    describe ".check_initial_matrix" do
      it 'matrix valid' do
        expect(@matrix.check_initial_matrix).to eq(1)
      end
      it 'matrix invalid' do
        expect(@matrix_invalid.check_initial_matrix).to eq(0)
      end
    end
  end
end
