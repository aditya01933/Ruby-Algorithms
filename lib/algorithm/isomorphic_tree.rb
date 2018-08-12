class IsomorphicTree
  def run(arr1, arr2)
    root1 = Tree::Node.new(arr1[0])
    root1.left = Tree::Node.new(arr1[1])
    root1.right = Tree::Node.new(arr1[2])
    root1.left.left = Tree::Node.new(arr1[3])
    root1.left.right = Tree::Node.new(arr1[4])

    root1 = Tree::Node.new(arr2[0])
    root1.left = Tree::Node.new(arr2[1])
    root1.right = Tree::Node.new(arr2[2])
    root1.left.left = Tree::Node.new(arr2[3])
    root1.left.right = Tree::Node.new(arr2[4])
    check_isomorphic(root1, root2)
  end

  def check_isomorphic(tree1, tree2)
    if tree1.value.nil? && tree2.value.nil?
      return true
    end

    if tree1.value.nil? || tree2.value.nil?
      return false
    end

    if tree1.value != tree2.value
      return false
    end

    check_isomorphic(tree1.left, tree2.left) && check_isomorphic(tree1.right, tree2.right) ||
      check_isomorphic(tree1.left, tree2.right) && check_isomorphic(tree1.right, tree2.left)
  end
end
