# NOTE: no duplicate elements allowed
class CheckCousinBTree
  def run(arr, node_a, node_b)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    root.right.left = Tree::Node.new(arr[5])
    root.right.right = Tree::Node.new(arr[6])
    cousin?(root, node_a, node_b)
  end

  def cousin?(tree, node_a, node_b)
    level_a, parent_a = dfs(tree, node_a)
    level_b, parent_b = dfs(tree, node_b)
    # binding.pry
    level_a && level_b && level_a == level_b && parent_a != parent_b
  end

  def dfs(tree, node, level = 1, parent = nil)
    return [] if tree.value.nil?
    # binding.pry

    return [level, parent] if tree.value == node

    if tree.left
      l, pa = dfs(tree.left, node, level + 1, tree.value)
      return [l, pa] if l && pa
    end

    dfs(tree.right, node, level + 1, tree.value) if tree.right
  end
end
