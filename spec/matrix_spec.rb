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
  end

  it ".column_size" do
    expect(@matrix.column_size).to eq(7)
  end

  it '.maximalSquare' do
    expect(@matrix.maximalSquare).to eq(9)
  end
end
