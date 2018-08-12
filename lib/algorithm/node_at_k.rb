class NodeAtK
  def run(arr, k)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    depth = 0
    dfs(root, depth, k)
  end

  def dfs(root, depth = 0, k)
    if depth == k
      puts root.value
      return
    end
    depth += 1
    dfs(root.left, depth, k) if root.left
    dfs(root.right, depth, k) if root.right
  end
end
