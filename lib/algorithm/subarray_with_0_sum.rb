# SubArrayWith0Sum: Given an array of positive and negative numbers,
# find if there is a subarray (of size at-least one) with 0 sum.
class SubArrayWith0Sum
  attr_reader :sum_hash

  def initialize
    @sum_hash = {}
  end

  def check(input)
    i = 0
    sum = 0
    while i < input.length
      sum += input[i]

      return true if sum.zero? || sum_hash[sum]

      sum_hash[sum] = i
      i += 1
    end
    false
  end
end
