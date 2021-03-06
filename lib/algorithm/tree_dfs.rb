class TreeDFS
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    dfs(root)
  end

  def dfs(root)
    puts root.value
    dfs(root.left) if root.left
    dfs(root.right) if root.right
  end
end
