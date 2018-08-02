class MergeSort
  attr_accessor :merged_arr

  def initialize
    @merged_arr = []
  end

  def merge(arr)
    if arr.count <= 1
      return arr
    end

    left = merge(arr[0..(arr.length/2)-1])
    right = merge(arr[(arr.length/2)..(arr.length-1)])

    ptr_a = 0
    ptr_b = 0

    result = []

    while ptr_a < left.length && ptr_b < right.length
      if left[ptr_a] < right[ptr_b]
        result << left[ptr_a]
        ptr_a += 1
      else
        result << right[ptr_b]
        ptr_b += 1
      end
    end

    if ptr_a < (left.length)
      result += left[ptr_a..(left.length-1)]
    elsif ptr_b < (right.length)
      result += right[ptr_b..(right.length-1)]
    end

    result
  end
end
