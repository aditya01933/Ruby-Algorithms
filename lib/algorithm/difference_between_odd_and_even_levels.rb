class DiffBtwOddEven
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    root.right.right = Tree::Node.new(arr[5])
    root.left.right.left = Tree::Node.new(arr[6])
    root.right.right.left = Tree::Node.new(arr[7])
    root.right.right.right = Tree::Node.new(arr[8])
    dfs(root)
  end

  def dfs(root, l = 1, o = 0, e = 0)
    o += root.value if l.odd?
    e += root.value if l.even?

    dfs(root.left, l, o, e) if root.left
    dfs(root.right, l, o, e) if root.right

    e - o
  end
end
