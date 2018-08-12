class TreeDFS
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    dfs([root])
  end

  def dfs(q)
    node = q[0]
    q << node.left if node.left
    q << node.right if node.right
    puts q.shift.value
    return if q.empty?
    dfs(q)
  end
end
