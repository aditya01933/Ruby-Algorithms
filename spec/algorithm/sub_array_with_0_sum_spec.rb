require 'spec_helper'

describe SubArrayWith0Sum do
  def zero_sum_sub_array
    SubArrayWith0Sum.new
  end

  it 'should test for different inputs' do
    inputs = {
      'true' => [[4, 2, -3, 1, 6], [4, 2, 0, 1, 6]],
      'false' => [[1], [], [-3, 2, 3, 1, 6]]
    }

    inputs.each do |result, tests|
      tests.each do |test_case|
        expect(zero_sum_sub_array.check(test_case).to_s).to eq result
      end
    end
  end
end
