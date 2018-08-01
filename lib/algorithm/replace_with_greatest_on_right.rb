require_relative '../dependencies'
class ReplaceWithGreatestOnRight
  def run(arr)
    i = arr.length - 1
    max = -1

    while(i >= 0)
      current = arr[i]
      arr[i] = max

      if current > max
        max = current
      end

      i -= 1
    end

    arr
  end
end
