require 'spec_helper'

describe MergeSort do
  it 'should merge give arrays' do
    cases = [
      {
        in: [1, 5, 9, 2, 6],
        out: [1, 2, 5, 6, 9]
      },
      {
        in: [2, 7, 5, 1],
        out: [1, 2, 5, 7]
      },
      {
        in: [1, 2, 3],
        out: [1, 2, 3]
      },
      {
        in: [5, 5, 5, 2, 1, 0],
        out: [0, 1, 2, 5, 5, 5]
      },
      {
        in: [],
        out: []
      },
      {
        in: [1],
        out: [1]
      }
    ]

    cases.each do |c|
      expect(sort(c[:in])).to eq c[:out]
    end
  end

  def sort(arr)
    MergeSort.new.merge(arr)
  end
end
