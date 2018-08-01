require 'spec_helper'

describe ReplaceWithGreatestOnRight do
  it 'should work for given inputs' do
    arrays = [
      {
        in: [16, 17, 4, 3, 5, 2],
        out: [17, 5, 5, 5, 2, -1]
      },
      {
        in: [-1],
        out: [-1]
      },
      {
        in: [],
        out: []
      },
      {
        in: [3, 3, 3],
        out: [3, 3, -1]
      }
    ]

    arrays.each do |arr|
      expect(ReplaceWithGreatestOnRight.new.run(arr[:in])).to eq(arr[:out])
    end
  end
end
