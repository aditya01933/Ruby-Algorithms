require 'spec_helper'

describe BracketParser do
  def parser
    BracketParser.new
  end

  it 'should work for different inputs' do
    inputs = {
      '(a+(b*c))+(d/e)' => [1, 2, 2, 1, 3, 3],
      '((())(()))' => [1, 2, 3, 3, 2, 4, 5, 5, 4, 1]
    }

    inputs.each do |input, result|
      expect(parser.run(input)).to eq result
    end
  end
end
