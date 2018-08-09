# Find a pair with maximum product in array of Integers (-ve allowed)
class MaxProduct
  def self.run(arr)
    if arr.length < 2
      puts 'no pair exists'
    end

    a = 0
    b = 0
    a1 = 0
    b1 = 0
    i = 0

    while(i < arr.length)
      if arr[i] > a
        b = a
        a = arr[i]
      elsif arr[i] > b
        b = arr[i]
      end

      if arr[i] < 0 && arr[i].abs > a1.abs
        b1 = a1
        a1 = arr[i]
      elsif arr[i] < 0 && arr[i].abs > b1.abs
        b1 = arr[i]
      end
      i += 1
    end

    if a*b > a1*b1
      "Pair is #{a} & #{b}"
    else
      "Pair is #{a1} & #{b1}"
    end
  end
end
