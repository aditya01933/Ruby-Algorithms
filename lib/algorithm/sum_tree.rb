class SumTree
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    root.right.left = Tree::Node.new(arr[5])
    root.right.right = Tree::Node.new(arr[6])
    sum?(root)
  end

  def sum?(tree)
    if tree.value.nil? || (tree.left.nil? && tree.right.nil?)
      return true
    end

    if sum(tree.left) + sum(tree.right) == tree.value
      return sum?(tree.left) && sum?(tree.right)
    end
    false
  end

  def sum(tree)
    if tree.left.nil? && tree.right.nil?
      return tree.value
    end
    sum(tree.left) + sum(tree.right) + tree.value
  end
end
