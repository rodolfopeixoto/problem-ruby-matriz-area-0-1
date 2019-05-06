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
  it ".row_size" do
    expect(@matrix.row_size).to eq(6)
  end

  it '.column_size' do
    expect(@matrix.column_size).to eq(7)
  end
end
