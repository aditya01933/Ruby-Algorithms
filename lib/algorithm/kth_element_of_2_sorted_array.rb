# K-th element of two sorted Arrays:

# Given two sorted arrays of size m and n respectively,
# you are tasked with finding
# the element that would be at the kth position of the final sorted array.
class KthElementOf2SortedArray
  def self.find(a, b, k)
    ab = merge(a, b)
    ab[k - 1]
  end

  def self.merge(a, b)
    ab = []
    i, j = 0, 0

    while(i < a.length && j < b.length)
      if(a[i] < b[j])
        ab << a[i]
        i += 1
      else
        ab << b[j]
        j += 1
      end
    end

    while(i < a.length)
      ab << a[i]
      i += 1
    end

    while(j < b.length)
      ab << b[j]
      j += 1
    end

    ab
  end
end
