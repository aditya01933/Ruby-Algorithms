require 'spec_helper'

describe MatrixParser do
  it 'should work for given inputs' do
    test_set = [{
      in: [[1, 2, 3], [4, 5, 6]],
      out: '1 2 3'
    }]

    test_set.each do |test_case|
      MatrixParser.traverse(test_case[:in])
    end
  end
end
