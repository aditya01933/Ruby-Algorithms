# Write a Program to Find the Maximum Depth or Height of a Tree.
# input [el, left, right, left, right]
class MaxDepthOfTree
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    max_depth(root)
  end

  def max_depth(root)
    return 1 if root.left.nil? && root.right.nil?

    l_d = max_depth(root.left)
    r_d = max_depth(root.right)

    if l_d > r_d
      return l_d + 1
    else
      return r_d + 1
    end
  end
end
