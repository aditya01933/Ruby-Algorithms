class CheckSumCU
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    total = arr.reduce(:+)
    sum(root, total)
  end

  def sum(root, total)
    uc_sum = root.value + uncovered_sum_left(root.left) + uncovered_sum_right(root.right)
    c_sum = total - uc_sum
    uc_sum == c_sum
  end

  def uncovered_sum_right(root)
    if root.left.nil? && root.right.nil?
      return root.value
    end
    if root.right
      root.value + uncovered_sum_right(root.right)
    else
      root.value + uncovered_sum_right(root.left)
    end
  end

  def uncovered_sum_left(root)
    if root.left.nil? && root.right.nil?
      return root.value
    end
    if root.left
      root.value + uncovered_sum_left(root.left)
    else
      root.value + uncovered_sum_left(root.right)
    end
  end
end