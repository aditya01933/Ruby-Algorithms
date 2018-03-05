require 'spec_helper'

describe KthElementOf2SortedArray do
  it 'should merge 2 arrays' do
    a = [2, 3, 6, 7, 9]
    b = [1, 4, 8, 10]

    kth_of_ab = KthElementOf2SortedArray.merge(a, b)
    expect(kth_of_ab).to eq([1, 2, 3, 4, 6, 7, 8, 9, 10])
  end

  it 'should find the kth element in array' do
    a = [2, 3, 6, 7, 9]
    b = [1, 4, 8, 10]
    k = 5

    kth_of_ab = KthElementOf2SortedArray.find(a, b, k)
    expect(kth_of_ab).to eq(6)
  end
end
